import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugasakhir/controller/routes/routes.dart';
import 'package:tugasakhir/pages/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return GetMaterialApp(
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      getPages: AppRoutes.pages,
    );
  }
}
