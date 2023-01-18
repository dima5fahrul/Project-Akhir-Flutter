import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, right: 20, left: 20),
      width: 393,
      child: Image.asset("assets/images/banner.png"),
    );
  }
}
