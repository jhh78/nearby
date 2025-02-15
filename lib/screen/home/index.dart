import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/provider/system.dart';

class HomeIndexScreen extends StatelessWidget {
  HomeIndexScreen({super.key});
  final SystemProvider systemProvider = Get.put(SystemProvider());

  @override
  Widget build(BuildContext context) {
    log(systemProvider.userBox.toMap().toString());
    log(systemProvider.systemBox.toMap().toString());
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/images/home.png",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
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
              child: Image.asset(
                "assets/images/write.png",
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
