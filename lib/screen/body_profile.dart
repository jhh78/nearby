import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/job_input.dart';
import 'package:nearby/service/router.dart';

class BodyProfileScreen extends StatelessWidget {
  const BodyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: RouterService.moveJobInput,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/images/bodyProfile.png",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
