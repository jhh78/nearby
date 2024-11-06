import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/info_input.dart';
import 'package:nearby/screen/profile_input.dart';

class PhoneCheckScreen extends StatelessWidget {
  const PhoneCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {Get.to(() => InfoInputScreen())},
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "images/phoneCheck.png",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
