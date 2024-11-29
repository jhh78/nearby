import 'package:flutter/material.dart';

class ChartRecommendScreen extends StatelessWidget {
  const ChartRecommendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/images/recomend.png",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
