import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60, vertical: 40),
      height: screenHeight / 1.2,
      constraints: BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //avatar image
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withOpacity(0.4),
                CustomColor.scaffoldBg.withOpacity(0.4)
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              'assets/images/kavinkumar.png',
              width: screenWidth,
              height: 200,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Hi, \nI'm Kavin Kumar S\nA Software Developer",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
                height: 1.5),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 180,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.yellowPrimary,
                ),
                onPressed: () {},
                child: Text('Get in touch',
                    style: TextStyle(color: CustomColor.whitePrimary))),
          )
        ],
      ),
    );
  }
}
