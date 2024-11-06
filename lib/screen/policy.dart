import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/phone_check.dart';

class PolicyScreen extends StatelessWidget {
  const PolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {Get.to(() => PhoneCheckScreen())},
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "images/policy.png",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
