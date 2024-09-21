import 'package:flutter/material.dart';
import 'package:app/pages/landing.dart';
import 'package:app/pages/home.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => LandingPage(),
      '/main' : (context) => HomePage(), 
    },
  ));
}

