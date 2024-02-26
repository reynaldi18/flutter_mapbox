import 'package:map_test/src/network/api_result.dart';
import 'package:stacked/stacked_annotations.dart';

import '../core/core_service.dart';
import '../model/location.dart';
import '../network/network_exceptions.dart';

@LazySingleton()
class MapService extends CoreService {
  Future<ApiResult<Location>> fetchLocation() async {
    try {
      const apiKey = '689c2279e0834a3ba82743432605e746';
      const layerId = '628f1d7c84b953e79a7cd896';
      const projectId = '611eafa6be8a2635e15c4afc';
      var result = await apiService.getLocation(apiKey, layerId, projectId);
      return ApiResult.success(data: result);
    } catch (e) {
      return Failure(
        error: NetworkExceptions.getDioException(e),
      );
    }
  }
}
