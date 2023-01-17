import 'package:get/get.dart';
import 'package:tugasakhir/pages/account/account_screen.dart';
import 'package:tugasakhir/pages/authentication/login_screen.dart';
import 'package:tugasakhir/pages/authentication/register_screen.dart';
import 'package:tugasakhir/controller/name_routes.dart';
import 'package:tugasakhir/pages/home/home_screen.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: RouteName.login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: RouteName.register,
      page: () => RegisterScreen(),
    ),
    GetPage(
      name: RouteName.home,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: RouteName.account,
      page: () => AccountScreen(),
    ),
  ];
}
