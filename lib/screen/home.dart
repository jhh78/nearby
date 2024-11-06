import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          "images/home.png",
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
