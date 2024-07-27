import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialData();
  }

  Future<void> initialData() async {
    await Future.delayed(Duration(seconds: 5));
    Get.offAll(() => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              Text(
                "K a v i n ' s",
                style: TextStyle(fontSize: 30, color: Colors.orange),
              ),
              Image.asset(
                'assets/images/portfolio.png',
                width: 300,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
