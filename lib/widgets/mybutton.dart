import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const MyButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 60,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, color: textColor),
      ),
    );
  }
}
