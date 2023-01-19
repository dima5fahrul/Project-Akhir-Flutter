import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhir/controller/preferences/button_toggle.dart';
import '../section/banner.dart';
import '../section/search_section.dart';
import '../section/recentjobs_section.dart';
import '../section/topcompany_section.dart';
import '../../../controller/routes/name_routes.dart';
import '../../../controller/preferences/hexcolor_convert.dart';
import '../../../models/company_model.dart';
import '../../../models/job_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _applied = CompanyModel().apllicant.toString();
  final _contracts = CompanyModel().contract.toString();
  bool selected = false;
  final _bgPrimary = HexColor("#F9F9F9");
  final _bgSecondary = HexColor("#59B4B5");
  final _black = HexColor('#545454');

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _bgPrimary,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20),
          onPressed: () {},
          icon: Image.asset('assets/icons/setting_icon.png'),
        ),
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Image.asset("assets/logos/logo.png", width: 100),
          titlePadding: const EdgeInsets.all(5.0),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 20, top: 5),
            icon: Image.asset(
              "assets/icons/account_icon.png",
            ),
            onPressed: () {
              Get.toNamed(RouteName.account);
            },
          ),
        ],
        elevation: 0,
      ),
      // ------------------------------body---------------------------------
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              SearchSection(bgPrimary: _bgPrimary, controller: _controller),
              const BannerSection(),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 22),
                height: 36,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 15),
                      child: SelectableButton(
                        selected: selected,
                        onPressed: () {
                          setState(() {
                            selected = !selected;
                          });
                        },
                        child: Text(jobs[index].name!),
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                return _bgPrimary;
                              }
                              return HexColor(
                                  "#A5A5A5"); // defer to the defaults
                            },
                          ),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                return _bgSecondary;
                              }
                              return HexColor(
                                  "#C4E4E4"); // defer to the defaults
                            },
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: jobs.length,
                ),
              ),
              TopCompanySection(black: _black, bgPrimary: _bgPrimary),
              RecentJobsSection(black: _black),
            ],
          ),
        ),
      ),
    );
  }
}
