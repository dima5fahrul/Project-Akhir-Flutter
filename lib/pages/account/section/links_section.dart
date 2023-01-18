import 'package:flutter/material.dart';
import 'package:tugasakhir/controller/hexcolor_convert.dart';

class LinksSkillsSection extends StatelessWidget {
  const LinksSkillsSection({
    Key? key,
    required HexColor black,
  })  : _black = black,
        super(key: key);

  final HexColor _black;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              'Links',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w500, color: _black),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 32,
                  child: Image.asset('assets/icons/url.png'),
                ),
                Container(
                  child: Text(
                    'https://dimasfahrul.co.id',
                    style: TextStyle(
                      fontSize: 14,
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
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 32,
                  child: Image.asset('assets/logos/linkedin.png'),
                ),
                Container(
                  child: Text(
                    'https://linkedin.com/in/dimasfahrul',
                    style: TextStyle(
                      fontSize: 14,
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
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 32,
                  child: Image.asset('assets/logos/github.png'),
                ),
                Container(
                  child: Text(
                    'https://github.com/dima5fahrul',
                    style: TextStyle(
                      fontSize: 14,
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
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 32,
                  child: Image.asset('assets/logos/gitlab.png'),
                ),
                Container(
                  child: Text(
                    'https://gitlab.com/dima5fahrul',
                    style: TextStyle(
                      fontSize: 14,
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
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 32,
                  child: Image.asset('assets/logos/vercel.png'),
                ),
                Container(
                  child: Text(
                    'https://vercel.com/dima5fahrul.co.id',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Skills',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500, color: _black),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: 60,
                      child: Image.asset('assets/logos/Flutter-Light.png'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: 60,
                      child: Image.asset('assets/logos/bootstrap.png'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: 60,
                      child: Image.asset('assets/logos/TailwindCSS.png'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: 60,
                      child: Image.asset('assets/logos/laravel.png'),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: 60,
                      child: Image.asset('assets/logos/NodeJS.png'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: 60,
                      child: Image.asset('assets/logos/VueJS.png'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: 60,
                      child: Image.asset('assets/logos/MongoDB.png'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: 60,
                      child: Image.asset('assets/logos/MySQL.png'),
                    ),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
