import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class HttpHelper {
  final navigationService = locator<NavigationService>();
  BuildContext? currentContext = StackedService.navigatorKey?.currentContext;

  var logger = Logger(
    printer: PrettyPrinter(
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );

  getDioInterceptor() => InterceptorsWrapper(
        onRequest: (options, handler) {
          try {
            options.headers = {
              'Content-Type': options.data is FormData
                  ? 'multipart/form-data'
                  : Headers.jsonContentType,
              'Accept': 'application/json',
            };
            logger.i(
                "${options.headers}\n${options.queryParameters}\n${options.data}");
            logger.i("${options.headers['Authorization']}");

            return handler.next(options);
          } catch (e) {
            logger.e("$options");
            return handler.next(options);
          }
        },
        onResponse: (response, handler) {
          try {
            logger.i(
                '<-- ${response.statusCode} ${response.statusMessage} ${response.requestOptions.uri}');
            logger.i('Headers: ${response.headers}');
            logger.i('Body: ${response.data}');
            return handler.next(response);
          } catch (e) {
            logger.e("$response");
            return handler.next(response);
          }
        },
        onError: (DioException e, handler) {
          logger.e(
              '<-- ${e.response?.statusCode} ${e.response?.statusMessage} ${e.response?.requestOptions.uri}');
          logger.e('Headers: ${e.response?.headers}');
          logger.e('Error: ${e.response?.data}');
          return handler.next(e);
        },
      );
}
