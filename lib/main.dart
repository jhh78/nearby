import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: GestureDetector(
        onTap: () => {Get.to(() => LoginScreen())},
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "images/intro.png",
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
    );
  }
}
