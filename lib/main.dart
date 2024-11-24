import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/provider/system.dart';
import 'package:nearby/screen/intro.dart';
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
    return Obx(() {
      return GetMaterialApp(
        theme: ThemeData.light().copyWith(
          textTheme: getLightTextTheme(),
        ),
        darkTheme: ThemeData.dark().copyWith(
          textTheme: getDarkTextTheme(),
        ),
        themeMode: systemProvider.themeMode.value,
        home: IntroScreen(),
      );
    });
  }
}
