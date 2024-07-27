import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.1,
      constraints: BoxConstraints(
        minHeight: 350,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //intro msg
              Text(
                "Hi, \nI'm Kavin Kumar S\nA Software Developer",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                    height: 1.5),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 250,
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
              height: 250,
              width: screenWidth / 2,
            ),
          )
        ],
      ),
    );
  }
}
