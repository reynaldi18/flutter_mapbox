import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../helpers/http_helper.dart';
import '../model/location.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://geoserver.mapid.io/')
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) {
    dio.interceptors.add(HttpHelper().getDioInterceptor());
    return _ApiService(dio, baseUrl: baseUrl);
  }

  @GET("layers_new/get_layer")
  Future<Location> getLocation(
    @Query("api_key") String? apiKey,
    @Query("layer_id") String? layerId,
    @Query("project_id") String? projectId,
  );
}
