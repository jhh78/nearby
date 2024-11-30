import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/phone_check.dart';
import 'package:nearby/service/router.dart';

class PolicyScreen extends StatelessWidget {
  const PolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: RouterService.movePhoneCheck,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/images/policy.png",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
