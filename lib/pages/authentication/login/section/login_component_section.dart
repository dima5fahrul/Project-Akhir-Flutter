import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugasakhir/controller/preferences/hexcolor_convert.dart';
import 'package:tugasakhir/controller/routes/name_routes.dart';

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

class ForgetPasswordSection extends StatelessWidget {
  const ForgetPasswordSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: const Text('Lupa kata sandi?'),
    );
  }
}

class RegisterButtonSection extends StatelessWidget {
  const RegisterButtonSection({
    Key? key,
    required HexColor bgPrimary,
    required HexColor bgSecondary,
  })  : _bgPrimary = bgPrimary,
        _bgSecondary = bgSecondary,
        super(key: key);

  final HexColor _bgPrimary;
  final HexColor _bgSecondary;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed(RouteName.register);
        },
        child: const Text('SignUp'),
        style: ElevatedButton.styleFrom(
          backgroundColor: _bgPrimary,
          foregroundColor: _bgSecondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
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
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(top: 46),
      child: const Text('Email'),
    );
  }
}
