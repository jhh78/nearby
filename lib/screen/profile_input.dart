import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/horby_input.dart';
import 'package:nearby/service/router.dart';

class ProfileInputScreen extends StatelessWidget {
  const ProfileInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: RouterService.moveHobbyInput,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/images/profileInput.png",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
