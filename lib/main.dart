import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/login.dart';
import 'package:nearby/screen/test/login_test.dart';
import 'package:nearby/screen/test/styles.dart';
import 'package:nearby/utils/styles.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textTheme: getTextTheme(),
      ),
      home: Scaffold(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
