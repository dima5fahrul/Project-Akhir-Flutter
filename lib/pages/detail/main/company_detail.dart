import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugasakhir/controller/preferences/hexcolor_convert.dart';
import 'package:tugasakhir/pages/detail/section/button_section.dart';
import 'package:tugasakhir/pages/detail/section/requirements_section.dart';
import '../../../models/company_model.dart';

class CompanyDetail extends StatefulWidget {
  CompanyDetail({required this.id});

  late int id;

  @override
  State<CompanyDetail> createState() => _CompanyDetailState();
}

class _CompanyDetailState extends State<CompanyDetail> {
  bool _isExpanded = false;
  var _image = 'assets/icons/bookmark.png';
  final _bgPrimary = HexColor("#FFFFFF");
  final _bgSecondary = HexColor("#59B4B5");
  final _black = HexColor('#545454');

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
            "Job Detail",
            style: TextStyle(
              color: _black,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (_image == 'assets/icons/bookmark.png') {
                    _image = 'assets/icons/bookmark_onTap.png';
                  } else {
                    _image = 'assets/icons/bookmark.png';
                  }
                });
              },
              child: Image.asset(
                _image,
                width: 20,
              ),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 30, bottom: 30),
          color: _bgPrimary,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 55),
                child: Image.asset(
                  "assets/images/detail_bg.png",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: HexColor('#000000').withOpacity(0.10),
                          blurRadius: 20,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Image.asset(items[widget.id].logo.toString()),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(items[widget.id].job.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: _black,
                            )),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: Text(items[widget.id].name.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: _black,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: 240,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: _bgPrimary,
                      boxShadow: [
                        BoxShadow(
                          color: HexColor('#000000').withOpacity(0.20),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(items[widget.id].location.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            )),
                        Container(
                          width: 1,
                          height: 25,
                          color: Colors.grey,
                        ),
                        Text(items[widget.id].category.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            )),
                        Container(
                          width: 1,
                          height: 25,
                          color: Colors.grey,
                        ),
                        Text(items[widget.id].contract.toString() + " Year",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          alignment: Alignment.centerLeft,
                          child: Text('Job Description',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: _black,
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isExpanded = !_isExpanded;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                                top: 10, left: 20, right: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    items[widget.id].description.toString(),
                                    textAlign: TextAlign.justify,
                                    maxLines: _isExpanded ? 20 : 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: _black,
                                    ),
                                  ),
                                ),
                                Icon(_isExpanded
                                    ? Icons.expand_less
                                    : Icons.expand_more)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 20, right: 20),
                          alignment: Alignment.centerLeft,
                          child: Text('Requirements',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: _black,
                              )),
                        ),
                        RequirementsSection(black: _black),
                      ],
                    ),
                  ),
                  ButtonSection(
                      bgSecondary: _bgSecondary, bgPrimary: _bgPrimary),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
