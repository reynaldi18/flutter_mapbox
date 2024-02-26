import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import '../network/api_service.dart';

class CoreService {
  BuildContext? currentContext = StackedService.navigatorKey?.currentContext;
  ApiService apiService = ApiService(Dio());
}
