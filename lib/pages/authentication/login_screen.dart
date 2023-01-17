import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhir/controller/hexcolor_convert.dart';
import 'package:tugasakhir/controller/name_routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color _bgPrimary = HexColor("#F9F9F9");
  Color _bgSecondary = HexColor("#59B4B5");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, right: 50, left: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: _bgPrimary,
              width: 180,
              height: 115,
              child: Image.asset("assets/logos/logo_splash.png"),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(top: 46),
                    child: Text('Username'),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(top: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'What\'s your username?',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(top: 10),
                    child: Text('Password'),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(top: 5),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Your password?',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    margin: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(RouteName.home);
                      },
                      child: Text('Login'),
                      style: ElevatedButton.styleFrom(
                        primary: _bgSecondary,
                        onPrimary: _bgPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 260,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(RouteName.register);
                      },
                      child: Text('Register'),
                      style: ElevatedButton.styleFrom(
                        primary: _bgPrimary,
                        onPrimary: _bgSecondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text('Lupa kata sandi?'),
            ),
          ],
        ),
      ),
    );
  }
}
