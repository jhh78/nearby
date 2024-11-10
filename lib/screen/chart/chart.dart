import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/chart/recommend.dart';

class HomeChartScreen extends StatelessWidget {
  const HomeChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "images/chart.png",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'uniqueTag456',
        onPressed: () {
          Get.bottomSheet(
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: ChartRecommendScreen(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
