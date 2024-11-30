import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/body_profile.dart';
import 'package:nearby/screen/member_info.dart';
import 'package:nearby/service/router.dart';

class HobbyInputScreen extends StatelessWidget {
  const HobbyInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: RouterService.moveBodyProfile,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/images/horby.png",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
