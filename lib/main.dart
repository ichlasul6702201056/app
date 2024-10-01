import 'package:flutter/material.dart';
import 'package:app/pages/landing.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/detail.dart';
import 'package:app/data/response.dto.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/' : (context) => const LandingPage(),
      '/main' : (context) => const HomePage(), 
      '/detail' : (context) => Detail(item: ModalRoute.of(context)!.settings.arguments as ApiResponse),
    },
  ));
}