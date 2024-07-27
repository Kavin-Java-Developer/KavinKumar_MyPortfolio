import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Kavin Kumar S',
      initialRoute: '/',
      getPages: Routes.routes,
    );
  }
}
