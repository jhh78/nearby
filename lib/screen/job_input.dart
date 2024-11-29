import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/home_frame.dart';

class JobInputScreen extends StatelessWidget {
  const JobInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {Get.to(() => HomeFrameScreen())},
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/images/jobInput.png",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
