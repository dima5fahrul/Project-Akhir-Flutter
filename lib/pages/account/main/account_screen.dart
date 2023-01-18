import 'package:flutter/material.dart';
import 'package:tugasakhir/pages/account/section/appbar_section.dart';
import 'package:tugasakhir/controller/hexcolor_convert.dart';
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
  final _bgPrimary = HexColor("#F9F9F9");
  final _bgSecondary = HexColor("#59B4B5");
  final _black = HexColor("#383838");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50, right: 20, left: 20),
          child: Column(
            children: [
              const AppBarSection(),
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
