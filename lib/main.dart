import 'package:flutter/material.dart';
import 'package:map_test/src/app/app.locator.dart';
import 'package:map_test/src/app/app.router.dart';
import 'package:map_test/src/ui/common/app_theme.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Map App',
      theme: ThemeConfig().defaultConfig,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
