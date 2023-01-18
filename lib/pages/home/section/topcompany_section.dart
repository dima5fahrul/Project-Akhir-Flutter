import 'package:flutter/material.dart';
import '../../../controller/hexcolor_convert.dart';
import '../../../models/company_model.dart';
import 'dart:math';

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
    return Container(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
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
                    onPressed: () {},
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
          // ------------------------------top company---------------------------------
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            height: 145,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
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
                        margin: const EdgeInsets.only(top: 25, left: 81),
                        height: 30,
                        child: Center(
                          child: Text(
                            items[index].name!,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: _bgPrimary,
                            ),
                          ),
                        ),
                      ),
                      // ------------------------------job text---------------------------------
                      Container(
                        margin: const EdgeInsets.only(top: 46, left: 81),
                        height: 30,
                        child: Center(
                          child: Text(
                            items[index].job!,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: _bgPrimary,
                            ),
                          ),
                        ),
                      ),
                      // ------------------------------category text---------------------------------
                      Container(
                        margin: const EdgeInsets.only(top: 89, left: 24),
                        height: 30,
                        child: Center(
                          child: Text(
                            items[index].category!,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: _bgPrimary,
                            ),
                          ),
                        ),
                      ),
                      // ------------------------------applied text---------------------------------
                      Container(
                        margin: const EdgeInsets.only(top: 89, left: 100),
                        height: 30,
                        child: Center(
                          child: Text(
                            (items[index].apllicant!.toString() + '+ Applied'),
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: _bgPrimary,
                            ),
                          ),
                        ),
                      ),
                      // ------------------------------contracts text---------------------------------
                      Container(
                        margin: const EdgeInsets.only(top: 89, left: 203),
                        height: 30,
                        child: Center(
                          child: Text(
                            (items[index].contract!.toString() + ' Years'),
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: _bgPrimary,
                            ),
                          ),
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
              itemCount: items.length,
              separatorBuilder: (context, index) => Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
