import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugasakhir/controller/preferences/hexcolor_convert.dart';
import 'package:tugasakhir/controller/routes/name_routes.dart';

class LoginTextButtonSection extends StatelessWidget {
  const LoginTextButtonSection({
    Key? key,
    required HexColor bgSecondary,
  })  : _bgSecondary = bgSecondary,
        super(key: key);

  final HexColor _bgSecondary;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Already have account?'),
          TextButton(
            onPressed: () {
              Get.toNamed(RouteName.login);
            },
            child: Text(
              'Login',
              style: TextStyle(color: _bgSecondary),
            ),
          ),
        ],
      ),
    );
  }
}

class PasswordSection extends StatelessWidget {
  const PasswordSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(top: 10),
      child: const Text('Password'),
    );
  }
}

class EmailSection extends StatelessWidget {
  const EmailSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      alignment: Alignment.topLeft,
      child: const Text('Email'),
    );
  }
}

class UsernameSection extends StatelessWidget {
  const UsernameSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      alignment: Alignment.topLeft,
      child: const Text('Username'),
    );
  }
}

class NameSection extends StatelessWidget {
  const NameSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      alignment: Alignment.topLeft,
      child: const Text('Name'),
    );
  }
}

class LogoSection extends StatelessWidget {
  const LogoSection({
    Key? key,
    required HexColor bgPrimary,
  })  : _bgPrimary = bgPrimary,
        super(key: key);

  final HexColor _bgPrimary;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _bgPrimary,
      width: 180,
      height: 115,
      child: Image.asset("assets/logos/logo_splash.png"),
    );
  }
}
