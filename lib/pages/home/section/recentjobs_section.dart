import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugasakhir/controller/routes/name_routes.dart';
import 'package:tugasakhir/pages/detail/main/company_detail.dart';
import 'package:tugasakhir/pages/list/main/list_screen.dart';
import '../../../controller/preferences/hexcolor_convert.dart';
import '../../../models/company_model.dart';

class RecentJobsSection extends StatelessWidget {
  const RecentJobsSection({
    Key? key,
    required HexColor black,
  })  : _black = black,
        super(key: key);

  final HexColor _black;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 2),
                child: Text(
                  'Recent Jobs',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: _black,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {
                    Get.to(ListScreen());
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // ------------------------------recent Jobs---------------------------------
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(CompanyDetail(id: index));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 11, left: 20, right: 20),
                width: 390,
                height: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: HexColor('#000000').withOpacity(0.25),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 13),
                      alignment: Alignment.centerLeft,
                      width: 50,
                      child: Image.asset(items[index].logoBg!),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 23, left: 75),
                      transformAlignment: Alignment.centerLeft,
                      child: Text(
                        items[index].job!,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: _black,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 50, left: 75),
                      transformAlignment: Alignment.centerLeft,
                      child: Text(
                        items[index].name!,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: _black,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 23, right: 11),
                      alignment: Alignment.topRight,
                      child: Text(
                        items[index].time!,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 70, left: 75),
                      height: 27,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 8),
                            width: 70,
                            height: 27,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: HexColor('#EEEEEE'),
                            ),
                            child: Text(items[index].category!,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: _black,
                                )),
                          ),
                          Container(
                            width: 70,
                            height: 27,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: HexColor('#EEEEEE'),
                            ),
                            child: Text(
                                items[index].contract!.toString() + ' Year',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: _black,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: InkWell(
            onTap: () {
              Get.to(ListScreen());
            },
            child: const Text(
              'View More',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
