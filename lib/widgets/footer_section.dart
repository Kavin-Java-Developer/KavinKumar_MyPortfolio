import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Text(
        "@ 2024 Kavin Kumar's Portfolio made with Flutter 3.22 ",
        style: TextStyle(
          color: CustomColor.whiteSecondary,
          fontWeight: FontWeight.w100,
        ),
      ),
    );
  }
}
