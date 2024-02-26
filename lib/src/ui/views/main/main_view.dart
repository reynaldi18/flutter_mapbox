import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';
import 'package:map_test/src/helpers/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/app_constants.dart';
import '../../common/app_colors.dart';
import 'main_viewmodel.dart';

class MainView extends StackedView<MainViewModel> {
  const MainView({super.key});

  @override
  Widget builder(
    BuildContext context,
    MainViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      body: viewModel.isBusy
          ? const Center(
              child: SizedBox(
                width: 24.0,
                height: 24.0,
                child: CircularProgressIndicator(),
              ),
            )
          : Stack(
              children: [
                FlutterMap(
                  mapController: viewModel.mapController,
                  options: MapOptions(
                    center: viewModel.currentCenter!,
                    zoom: 12,
                    maxZoom: 18,
                    minZoom: 5,
                    onPositionChanged: (MapPosition position, bool hasGesture) {
                      if (hasGesture) {
                        viewModel.mapPositionChanged(position, hasGesture);
                      }
                    },
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://api.mapbox.com/styles/v1/reynaldi18/{mapStyleId}/tiles/256/{z}/{x}/{y}@2x?access_token={accessToken}',
                      additionalOptions: const {
                        'mapStyleId': AppConstants.mapBoxStyleId,
                        'accessToken': AppConstants.mapBoxAccessToken,
                      },
                    ),
                    MarkerLayer(
                      markers: [
                        for (int i = 0;
                            i <
                                (viewModel
                                        .location?.geojson?.features!.length ??
                                    0);
                            i++)
                          Marker(
                            width: 20.0,
                            height: 20.0,
                            point: LatLng(
                              viewModel.location?.geojson!.features?[i].geometry
                                      ?.coordinates![1] ??
                                  0,
                              viewModel.location?.geojson!.features?[i].geometry
                                      ?.coordinates![0] ??
                                  0,
                            ),
                            builder: (BuildContext context) => GestureDetector(
                              onTap: () => viewModel.showDetail(
                                context,
                                viewModel.location!.geojson!.features![i],
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: viewModel.setMarkerColor(
                                    viewModel.location?.geojson!.features?[i]
                                            .properties?.status ??
                                        '',
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                      ],
                    )
                  ],
                ),
                Positioned(
                  bottom: 24.0,
                  right: 24.0,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: FloatingActionButton(
                          onPressed: viewModel.zoomIn,
                          child: const Icon(Icons.add),
                        ),
                      ),
                      verticalSpace(16.0),
                      SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: FloatingActionButton(
                          onPressed: viewModel.zoomOut,
                          child: const Icon(Icons.remove),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }

  @override
  MainViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MainViewModel();

  @override
  void onViewModelReady(MainViewModel viewModel) {
    super.onViewModelReady(viewModel);
    viewModel.mapController = MapController();
  }

  @override
  void onDispose(MainViewModel viewModel) {
    viewModel.mapController.dispose();
    super.onDispose(viewModel);
  }
}
