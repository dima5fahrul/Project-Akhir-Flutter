import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:tugasakhir/controller/hexcolor_convert.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                  // -------------------------------Name---------------------------
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    alignment: Alignment.topLeft,
                    child: Text('Name'),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(top: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Input your name here',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  // --------------------------------Username---------------------------
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    alignment: Alignment.topLeft,
                    child: Text('Username'),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(top: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Don\'t forget your username',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  // --------------------------------Password---------------------------
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
                        hintText: 'Of course your password too',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  // --------------------------------Create Button---------------------------
                  Container(
                    width: 300,
                    margin: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Create Account'),
                      style: ElevatedButton.styleFrom(
                        primary: _bgSecondary,
                        onPrimary: _bgPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // --------------------------------Already have account?---------------------------
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have account?'),
                  TextButton(
                    onPressed: () {
                      Get.toNamed('/login');
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: _bgSecondary),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
