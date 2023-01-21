import 'package:flutter/material.dart';
import 'package:tugasakhir/controller/preferences/hexcolor_convert.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
    required HexColor bgSecondary,
    required HexColor bgPrimary,
  })  : _bgSecondary = bgSecondary,
        _bgPrimary = bgPrimary,
        super(key: key);

  final HexColor _bgSecondary;
  final HexColor _bgPrimary;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.2),
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
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/icons/message_icon.png',
                  width: 25,
                  height: 25,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 260,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Apply Now',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: _bgSecondary,
                foregroundColor: _bgPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
