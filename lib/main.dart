import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/login.dart';
import 'package:nearby/service/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService authService = Get.put(AuthService());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: GestureDetector(
        onTap: () => {
          Get.offAll(
            () => LoginScreen(),
          )
        },
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "images/intro.png",
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
    );
  }
}
