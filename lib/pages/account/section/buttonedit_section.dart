import 'package:flutter/material.dart';
import '../../../controller/preferences/hexcolor_convert.dart';

class ButtonEditSection extends StatelessWidget {
  const ButtonEditSection({
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
      margin: const EdgeInsets.only(top: 14),
      width: 390,
      height: 45,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: _bgSecondary,
          onPrimary: _bgPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
