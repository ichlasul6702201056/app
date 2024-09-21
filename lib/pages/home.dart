import 'package:flutter/material.dart';
import 'package:app/style/font.dart';
import 'package:app/style/color.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Text(
                        '21 September 2024',
                        style: FontStyle.h3FontStyle,
                      ),
                      Text(
                        '08:12',
                        style: FontStyle.h1FontStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Image.asset('assets/sun.png', fit: BoxFit.scaleDown),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Incomplete ; (1)',
                    style: FontStyle.BodyFontStyle,
                  ),
                  Image.asset('assets/filter.png', fit: BoxFit.scaleDown),
                ],
              ),
            ),
            Divider(
              thickness: 3,
              color: ColorApp.textPrimaryColor,
              indent: MediaQuery.of(context).size.width * 0.1,
              endIndent: MediaQuery.of(context).size.width * 0.1,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                children: [
                  CardTile(),
                  SizedBox(height: 10),
                  CardTile(),
                  SizedBox(height: 10),
                  CardTile(),
                  SizedBox(height: 10),
                  CardTile(),
                  SizedBox(height: 10),
                  CardTile(),
                  SizedBox(height: 10),
                  CardTile(),
                  SizedBox(height: 10),
                  CardTile(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardTile extends StatelessWidget {
  const CardTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.black),
          left: BorderSide(color: Colors.black),
          right: BorderSide(),
          bottom: BorderSide(),
        ),
        borderRadius: BorderRadius.circular(10), // Added BorderRadius
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListTile(
          title: Text('here', style: FontStyle.h2FontStyle),
          subtitle: Text('there', style: FontStyle.h3FontStyle),
          trailing: Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}