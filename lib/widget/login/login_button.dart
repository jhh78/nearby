import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.callback,
    required this.text,
    this.icon,
  });

  final Function callback;
  final String text;
  final IconData? icon;

  Size getButtonWidthSize(BuildContext context) {
    return Size(MediaQuery.of(context).size.width * 0.85, 50);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: getButtonWidthSize(context),
        maximumSize: getButtonWidthSize(context),
        backgroundColor: Colors.white,
        shadowColor: Colors.grey, // 그림자 컬러 적용
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(
            color: Colors.black54,
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
      ),
      onPressed: () => callback(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Icon(
              icon,
              color: Colors.black,
              size: 28,
            ),
          const SizedBox(width: 10),
          Text(
            text,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
