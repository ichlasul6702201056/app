import 'package:flutter/material.dart';
import 'package:app/style/font.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CustomButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 147,
      height: 42,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: FontStyle.h2FontStyle,
        ),
      ),
    );
  }
}