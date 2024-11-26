import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/policy.dart';
import 'package:nearby/widget/login/login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void handleLoginGoogleLogin() {
    log("Google Login");
  }

  void handleAppleLogin() {
    log("Apple Login");
  }

  void handleEmailLogin() {
    log("Email Login");
  }

  void handleRegister() => Get.offAll(() => PolicyScreen(), transition: Transition.fade);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "images/login.png",
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginButton(
                  icon: Icons.g_mobiledata,
                  text: "Googleアカウントでログイン",
                  callback: handleLoginGoogleLogin,
                ),
                const SizedBox(height: 10),
                LoginButton(
                  icon: Icons.apple_outlined,
                  text: "Appleアカウントでログイン",
                  callback: handleAppleLogin,
                ),
                const SizedBox(height: 10),
                LoginButton(
                  text: "Emailでログイン",
                  callback: handleEmailLogin,
                ),
                const SizedBox(height: 10),
                LoginButton(
                  text: "新規登録",
                  callback: handleRegister,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
