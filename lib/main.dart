import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/controllers/page_view_controller.dart';
import 'package:real_estate_app/splash_screen.dart';

void main() {
  Get.put(PageViewController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Real Estate App',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
