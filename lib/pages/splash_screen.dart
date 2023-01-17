import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugasakhir/controller/name_routes.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    autoLogin();
    super.initState();
  }

  Future<void> autoLogin() async {
    await Future.delayed(
      const Duration(seconds: 4),
    );
    Get.toNamed(RouteName.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset('assets/logos/logo_splash.png', width: 200),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/images/bg_splash.png'),
          ),
        ],
      ),
    );
  }
}
