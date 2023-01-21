import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugasakhir/pages/detail/main/company_detail.dart';
import '../../../controller/preferences/hexcolor_convert.dart';
import '../../../models/company_model.dart';

class CompanyListSection extends StatelessWidget {
  const CompanyListSection({
    Key? key,
    required HexColor black,
  })  : _black = black,
        super(key: key);

  final HexColor _black;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Get.to(CompanyDetail(id: index));
          },
          child: Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            height: 150,
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
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Image.asset(items[index].logoBg!),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        bottom: 3, top: 5),
                                    child: Text(
                                      items[index].job!,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: _black,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    items[index].name!,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: _black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 9),
                              alignment: Alignment.topRight,
                              child: Text(
                                items[index].time!,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
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
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        width: 1000,
                        height: 1,
                        color: _black,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              'assets/icons/location_icon.png',
                              width: 20,
                            ),
                          ),
                          Text(items[index].location!,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: _black,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
