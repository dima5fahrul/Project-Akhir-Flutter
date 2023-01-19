import 'package:get/get.dart';
import 'package:tugasakhir/pages/account/main/account_screen.dart';
import 'package:tugasakhir/pages/authentication/login/main/login_screen.dart';
import 'package:tugasakhir/pages/authentication/register/main/register_screen.dart';
import 'package:tugasakhir/controller/routes/name_routes.dart';
import 'package:tugasakhir/pages/home/main/home_screen.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: RouteName.login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: RouteName.register,
      page: () => const RegisterScreen(),
    ),
    GetPage(
      name: RouteName.home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: RouteName.account,
      page: () => const AccountScreen(),
    ),
  ];
}
