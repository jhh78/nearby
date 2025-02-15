import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/info_input.dart';
import 'package:nearby/screen/profile_input.dart';
import 'package:nearby/service/router.dart';

class PhoneCheckScreen extends StatelessWidget {
  const PhoneCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: RouterService.moveInfoInput,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/images/phoneCheck.png",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
