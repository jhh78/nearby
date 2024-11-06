import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/body_profile.dart';
import 'package:nearby/screen/member_info.dart';

class HorbyInputScreen extends StatelessWidget {
  const HorbyInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {Get.to(() => BodyProfileScreen())},
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "images/horby.png",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
