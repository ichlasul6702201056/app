import 'package:flutter/material.dart';

class CustomTextFormFill extends StatelessWidget {
  final String hintText;
  final TextStyle fontStyle;
  final int maxLines;
  final TextEditingController controller;


  const CustomTextFormFill({
    required this.hintText,
    required this.fontStyle,
    required this.maxLines,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: fontStyle,
      maxLines: maxLines,
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: fontStyle,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white),
          ),
          enabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.zero),
    );
  }
}
