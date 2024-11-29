import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/provider/system.dart';

class LoginButton extends StatelessWidget {
  LoginButton({
    super.key,
    required this.callback,
    required this.text,
    this.icon,
    this.isApple = false,
    this.isGoogle = false,
  });

  final SystemProvider systemProvider = Get.put(SystemProvider());

  final Function callback;
  final String text;
  final IconData? icon;
  final bool isGoogle;
  final bool isApple;

  Size getButtonWidthSize(BuildContext context) {
    return Size(MediaQuery.of(context).size.width * 0.85, 50);
  }

  Widget renderButtonArea(BuildContext context) {
    if (isGoogle) {
      return Image.asset(
        systemProvider.themeMode.value == ThemeMode.dark ? "assets/images/signin.google.dark.png" : "assets/images/signin.google.light.png",
        width: 250,
        height: 75,
      );
    }

    if (isApple) {
      return Image.asset(
        systemProvider.themeMode.value == ThemeMode.dark ? "assets/images/signin.google.dark.png" : "assets/images/signin.google.light.png",
        width: 250,
        height: 75,
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null)
          Icon(
            icon,
            color: systemProvider.themeMode.value == ThemeMode.dark ? Colors.white : Colors.black,
            size: 28,
          ),
        const SizedBox(width: 10),
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }

  Color getBackgroundColor() {
    if (isGoogle || isApple) {
      return Colors.transparent;
    }

    return systemProvider.themeMode.value == ThemeMode.dark ? Colors.black : Colors.white;
  }

  Color getShadowColor() {
    if (isGoogle || isApple) {
      return Colors.transparent;
    }

    return Colors.grey;
  }

  RoundedRectangleBorder? getShape() {
    if (isGoogle || isApple) {
      return null;
    }
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
      side: BorderSide(
        color: systemProvider.themeMode.value == ThemeMode.dark ? Colors.white : Colors.black,
        width: 1,
        style: BorderStyle.solid,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: getButtonWidthSize(context),
          maximumSize: getButtonWidthSize(context),
          backgroundColor: getBackgroundColor(),
          shadowColor: getShadowColor(), // 그림자 컬러 적용
          shape: getShape(),
        ),
        onPressed: () => callback(),
        child: renderButtonArea(context),
      ),
    );
  }
}
