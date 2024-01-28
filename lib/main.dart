import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ihdev/routes/app_page.dart';
import 'package:ihdev/routes/app_route.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ihdev || Page',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      getPages: AppPage.routes,
      defaultTransition: Transition.fadeIn,
    );
  }
}
