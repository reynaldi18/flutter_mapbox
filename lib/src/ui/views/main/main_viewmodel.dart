import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:map_test/src/ui/widgets/detail_location.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../constants/app_constants.dart';
import '../../../model/feature.dart';
import '../../../model/location.dart';
import '../../../network/network_exceptions.dart';
import '../../../network/result_state.dart';
import '../../../services/map_service.dart';

class MainViewModel extends FutureViewModel {
  final _mapService = locator<MapService>();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late final MapController mapController;

  Location? location;
  double currentZoom = 12;
  LatLng? currentCenter;

  @override
  Future futureToRun() => getLocation();

  Future<ResultState> getLocation() async {
    var result = await _mapService.fetchLocation();
    return result.when(
      success: (Location data) {
        location = data;
        currentCenter = LatLng(
          location?.geojson!.features?[0].geometry?.coordinates![1] ?? 0,
          location?.geojson!.features?[0].geometry?.coordinates![0] ?? 0,
        );
        notifyListeners();
        return ResultState.data(data: data);
      },
      failure: (NetworkExceptions error) {
        return ResultState.error(error: error);
      },
    );
  }

  void zoomIn() {
    currentZoom += 1;
    mapController.move(currentCenter!, currentZoom);
  }

  void zoomOut() {
    currentZoom -= 1;
    mapController.move(currentCenter!, currentZoom);
  }

  void mapPositionChanged(MapPosition position, bool hasGesture) {
    currentCenter = position.center;
    notifyListeners();
  }

  Color setMarkerColor(String status) {
    switch (status) {
      case AppConstants.green:
        return Colors.green;
      case AppConstants.yellow:
        return Colors.yellow;
      case AppConstants.red:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  void showDetail(BuildContext context, Feature data) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return DetailLocation(
          data: data,
          setColor: setMarkerColor(data.properties?.status ?? ''),
        );
      },
    );
  }
}
