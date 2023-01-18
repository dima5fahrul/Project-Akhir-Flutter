import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.topLeft,
          height: 125,
          child: Image.asset("assets/icons/profile_icon.png"),
        ),
        Container(
          alignment: Alignment.topRight,
          child: IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/logout_icon.png"),
          ),
        ),
      ],
    );
  }
}
