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
  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  // variabel warna convert dari hexcolor
  final _bgPrimary = HexColor("#FFFFFF");
  final _bgSecondary = HexColor("#59B4B5");
  final _black = HexColor("#383838");
  var temp = '';

  @override
  void initState() {
    super.initState();
  }

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
          margin:
              const EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 20),
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
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 4),
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Dimas Fahrul',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: _black,
                        ),
                      ),
                    ),
                    JobSection(black: _black),
                    const TitleSection(),
                  ],
                ),
              ),
              ButtonEditSection(
                  bgSecondary: _bgSecondary, bgPrimary: _bgPrimary),
              FollowersSection(black: _black),
              LinksSkillsSection(black: _black),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'About',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: _black,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam nisl, eget aliquam nisl nisl sit amet nisl.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: _black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Text(
                      '© 2023. All rights reserved.',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: _black,
                      ),
                    ),
                    Text(
                      'Made with ❤️ by Dimas Fahrul',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: _black,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
