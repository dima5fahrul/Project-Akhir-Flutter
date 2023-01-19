import 'package:flutter/material.dart';
import '../../../controller/preferences/hexcolor_convert.dart';

class NameProfileSection extends StatelessWidget {
  const NameProfileSection({
    Key? key,
    required HexColor black,
  })  : _black = black,
        super(key: key);

  final HexColor _black;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 4),
            alignment: Alignment.topLeft,
            child: Text(
              "Dimas Fahrul",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: _black,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 4),
            alignment: Alignment.topLeft,
            child: Text(
              'Mobile Developer',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: _black,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 4),
            alignment: Alignment.topLeft,
            child: Text(
              'Experienced as a Mobile Developer for 2 years',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
