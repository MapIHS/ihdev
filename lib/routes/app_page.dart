import 'package:get/get.dart';
import 'package:ihdev/screens/home_screen.dart';

import 'app_route.dart';

class AppPage {
  static const inital = Routes.home;

  static List<GetPage<dynamic>> routes = [
    GetPage(
        name: Routes.home,
        page: () => const HomeScreen(),
        transition: Transition.downToUp)
  ];
}
