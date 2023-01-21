import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugasakhir/controller/preferences/button_toggle.dart';
import 'package:tugasakhir/controller/preferences/hexcolor_convert.dart';
import 'package:tugasakhir/models/job_model.dart';
import 'package:tugasakhir/pages/home/section/search_section.dart';
import 'package:tugasakhir/pages/list/section/company_list_section.dart';

class ListScreen extends StatefulWidget {
  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  bool selected = false;
  final _bgPrimary = HexColor("#FFFFFF");
  final _bgSecondary = HexColor("#59B4B5");
  final _black = HexColor('#545454');

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _bgPrimary,
        leading: IconButton(
          padding: const EdgeInsets.only(top: 20, bottom: 19),
          onPressed: () {
            Get.back();
          },
          icon: Image.asset('assets/icons/back_icon.png'),
        ),
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text(
            "Search Result",
            style: TextStyle(
              color: _black,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              SearchSection(bgPrimary: _bgPrimary, controller: _controller),
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
              CompanyListSection(black: _black),
            ],
          ),
        ),
      ),
    );
  }
}
