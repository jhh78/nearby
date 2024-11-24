import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/provider/system.dart';
import 'package:nearby/screen/login.dart';
import 'package:nearby/screen/test/login_test.dart';
import 'package:nearby/screen/test/styles.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});
  final SystemProvider systemProvider = Get.put(SystemProvider());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Get.to(() => LoginScreen());
            },
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                "images/intro.png",
                alignment: Alignment.center,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => LoginTestScreen());
                  },
                  child: Text("로그인 테스트"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => StyleTestScreen());
                  },
                  child: Text("폰트 테스트"),
                ),
                ElevatedButton(
                  onPressed: () {
                    systemProvider.toggleTheme();
                  },
                  child: Text("테마"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
