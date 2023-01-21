import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugasakhir/pages/detail/main/company_detail.dart';
import 'package:tugasakhir/pages/list/main/list_screen.dart';
import '../../../controller/preferences/hexcolor_convert.dart';
import '../../../models/company_model.dart';

class TopCompanySection extends StatelessWidget {
  const TopCompanySection({
    Key? key,
    required HexColor black,
    required HexColor bgPrimary,
  })  : _black = black,
        _bgPrimary = bgPrimary,
        super(key: key);

  final HexColor _black;
  final HexColor _bgPrimary;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 20, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 2),
                child: Text(
                  'Top Company',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: _black,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: TextButton(
                  onPressed: () {
                    Get.to(ListScreen());
                  },
                  child: const Text(
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
        // ------------------------------top company---------------------------------
        Container(
          margin: const EdgeInsets.only(left: 20),
          height: 145,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.to(CompanyDetail(id: index));
                },
                child: Stack(
                  children: [
                    // ------------------------------background 1---------------------------------
                    Container(
                      width: 275,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(items[index].bg!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // ------------------------------name text---------------------------------
                    Container(
                      margin: const EdgeInsets.only(top: 23, left: 84),
                      height: 30,
                      child: Center(
                        child: Text(
                          items[index].name!,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: HexColor(items[index].type == 'green' ||
                                    items[index].type == 'blue' ||
                                    items[index].type == 'red'
                                ? '#F9F9F9'
                                : '#545454'),
                          ),
                        ),
                      ),
                    ),
                    // ------------------------------job text---------------------------------
                    Container(
                      margin: const EdgeInsets.only(top: 45, left: 84),
                      height: 30,
                      child: Center(
                        child: Text(
                          items[index].job!,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: HexColor(items[index].type == 'green' ||
                                    items[index].type == 'blue' ||
                                    items[index].type == 'red'
                                ? '#F9F9F9'
                                : '#545454'),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 95, left: 15),
                      height: 27,
                      child: Row(
                        children: [
                          // ------------------------------category text---------------------------------
                          Container(
                            margin: const EdgeInsets.only(right: 8),
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            height: 27,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: HexColor(items[index].type == 'green'
                                  ? '#89C45F'
                                  : items[index].type == 'blue'
                                      ? '#5672B6'
                                      : items[index].type == 'red'
                                          ? '#FABEC1'
                                          : items[index].type == 'yellow'
                                              ? '#F6FB1E'
                                              : _bgPrimary.toString()),
                            ),
                            child: Text(
                              items[index].category!,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: HexColor(items[index].type == 'green' ||
                                        items[index].type == 'blue'
                                    ? '#F9F9F9'
                                    : '#545454'),
                              ),
                            ),
                          ),
                          // ------------------------------applied text---------------------------------
                          Container(
                            margin: const EdgeInsets.only(right: 8),
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            height: 27,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: HexColor(items[index].type == 'green'
                                  ? '#89C45F'
                                  : items[index].type == 'blue'
                                      ? '#5672B6'
                                      : items[index].type == 'red'
                                          ? '#FABEC1'
                                          : items[index].type == 'yellow'
                                              ? '#F6FB1E'
                                              : _bgPrimary.toString()),
                            ),
                            child: Text(
                                items[index].apllicant!.toString() +
                                    '+ Applied',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: HexColor(
                                      items[index].type == 'green' ||
                                              items[index].type == 'blue'
                                          ? '#F9F9F9'
                                          : '#545454'),
                                )),
                          ),
                          // ------------------------------contracts text---------------------------------
                          Container(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            height: 27,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: HexColor(items[index].type == 'green'
                                  ? '#89C45F'
                                  : items[index].type == 'blue'
                                      ? '#5672B6'
                                      : items[index].type == 'red'
                                          ? '#FABEC1'
                                          : items[index].type == 'yellow'
                                              ? '#F6FB1E'
                                              : _bgPrimary.toString()),
                            ),
                            child: Text(
                                items[index].contract!.toString() + ' Years',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: HexColor(
                                      items[index].type == 'green' ||
                                              items[index].type == 'blue'
                                          ? '#F9F9F9'
                                          : '#545454'),
                                )),
                          ),
                        ],
                      ),
                    ),
                    // ------------------------------logo---------------------------------
                    Container(
                      margin: const EdgeInsets.only(left: 15, top: 17),
                      width: 60,
                      child: Image.asset(items[index].logo!),
                    ),
                  ],
                ),
              );
            },
            itemCount: 4,
            separatorBuilder: (context, index) => Divider(),
          ),
        ),
      ],
    );
  }
}
