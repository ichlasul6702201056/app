import 'package:flutter/material.dart';
import 'package:app/style/font.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 147,
      height: 42,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(
          'START',
          style: FontStyle.h2FontStyle,
        ),
      ),
    );
  }
}