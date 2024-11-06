import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/job_input.dart';
// import 'package:nearby/screen/member_info%20copy.dart';

class MemberInfoScreen extends StatelessWidget {
  const MemberInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {Get.to(() => JobInputScreen())},
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
