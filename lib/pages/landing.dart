import 'package:app/components/button.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/todo.png', fit: BoxFit.cover,),
            CustomButton(
              onPressed : () => Navigator.pushNamed(context, '/main'),
            ),
          ],
        )
      ),  
    );
  }
}