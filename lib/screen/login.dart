import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/models/user.dart';
import 'package:nearby/provider/system.dart';
import 'package:nearby/screen/home/index.dart';
import 'package:nearby/screen/policy.dart';
import 'package:nearby/service/auth.dart';
import 'package:nearby/service/router.dart';
import 'package:nearby/utils/constants.dart';
import 'package:nearby/utils/hive.dart';
import 'package:nearby/widget/login/login_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final SystemProvider systemProvider = Get.put(SystemProvider());

  void handleGoogleLogin() {
    AuthService.signInWithGoogle().then((value) {
      log("Google Login >>>>>> ${value.user?.uid}");
      if (AuthService.isUserLoggedIn()) {
        final systemData = systemProvider.userBox.get(USER_DATA) ?? UserData();
        systemData.authType = AUTH_TYPE_GOOGLE;
        systemData.uid = AuthService.getUserUID();
        systemProvider.userBox.put(USER_DATA, systemData);
        log("User is logged in with UID: ${AuthService.getUserUID()}");

        RouterService.moveHomeLayout();
      } else {
        log("User is not logged in");
      }
    });
  }

  void handleAppleLogin() {
    AuthService.signInWithApple().then((value) {
      log("Apple Login >>>>>> ${value.user?.uid}");
      if (AuthService.isUserLoggedIn()) {
        final systemData = systemProvider.userBox.get(USER_DATA) ?? UserData();
        systemData.authType = AUTH_TYPE_APPLE;
        systemData.uid = AuthService.getUserUID();
        systemProvider.userBox.put(USER_DATA, systemData);
        log("User is logged in with UID: ${AuthService.getUserUID()}");
        RouterService.moveHomeLayout();
      } else {
        log("User is not logged in");
      }
    });
  }

  void handleEmailLogin(BuildContext context) {
    Get.bottomSheet(
      Container(
        height: 300,
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 0),
        decoration: const BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Text("Email로 로그인", style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text("로그인", style: Theme.of(context).textTheme.bodySmall),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/login.png",
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
                  icon: Icons.apple_outlined,
                  text: "Appleアカウントでログイン",
                  callback: handleGoogleLogin,
                  isGoogle: true,
                ),
                if (Platform.isIOS)
                  LoginButton(
                    icon: Icons.apple_outlined,
                    text: "Appleアカウントでログイン",
                    callback: handleAppleLogin,
                  ),
                LoginButton(
                  text: "Emailでログイン",
                  callback: () => handleEmailLogin(context),
                ),
                LoginButton(
                  text: "新規登録",
                  callback: RouterService.movePolicy,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
