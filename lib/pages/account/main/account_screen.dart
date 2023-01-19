import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugasakhir/controller/authentications/dio_http.dart';
import 'package:tugasakhir/controller/routes/name_routes.dart';
import 'package:tugasakhir/controller/preferences/hexcolor_convert.dart';
import 'package:tugasakhir/pages/account/section/buttonedit_section.dart';
import 'package:tugasakhir/pages/account/section/followers_section.dart';
import 'package:tugasakhir/pages/account/section/links_section.dart';
import 'package:tugasakhir/pages/account/section/nameprofile_section.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  // variabel warna convert dari hexcolor
  final _bgPrimary = HexColor("#F9F9F9");
  final _bgSecondary = HexColor("#59B4B5");
  final _black = HexColor("#383838");
  var temp = '';

  Future<dynamic> _logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? userToken = prefs.getString('user-token');

    setState(() {
      temp == userToken;
    });

    try {
      print(':Logout');
      var response = await DioHttp.request.post('/api/logout',
          options: Options(headers: {'authorization': 'Bearer $userToken'}));
      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.clear();
      Get.toNamed(RouteName.login);
    } catch (e) {
      print(':Logout Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50, right: 20, left: 20),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: 125,
                    child: Image.asset("assets/icons/profile_icon.png"),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        _logout();
                      },
                      icon: Image.asset("assets/icons/logout_icon.png"),
                    ),
                  ),
                ],
              ),
              NameProfileSection(black: _black),
              ButtonEditSection(
                  bgSecondary: _bgSecondary, bgPrimary: _bgPrimary),
              FollowersSection(black: _black),
              LinksSkillsSection(black: _black),
            ],
          ),
        ),
      ),
    );
  }
}
