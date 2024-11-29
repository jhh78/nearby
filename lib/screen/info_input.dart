import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/profile_input.dart';

class InfoInputScreen extends StatelessWidget {
  const InfoInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {Get.to(() => ProfileInputScreen())},
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/images/infoInput.png",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
