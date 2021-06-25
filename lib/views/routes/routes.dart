import 'package:get/get.dart';
import 'package:mobile/views/screens/home-screens/home.dart';
import 'package:mobile/views/screens/screen-login/login.dart';
import 'package:mobile/views/screens/screen-resgister/register.dart';

part 'constant_pages.dart';

class PageRouter {
  static const INITIL = Pages.LOGIN;
  static final routes = [
    GetPage(
        name: Pages.LOGIN,
        page: () => LoginScreen(),
        transition: Transition.zoom),
    GetPage(
        name: Pages.REGISTER,
        page: () => Register(),
        transition: Transition.zoom),
    GetPage(
        name: Pages.HOMESCREEN,
        page: () => HomeScreens(),
        transition: Transition.zoom)
  ];
}
