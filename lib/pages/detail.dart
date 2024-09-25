import 'package:app/components/button.dart';
import 'package:app/components/text_form_field.dart';
import 'package:app/data/response.dto.dart';
import 'package:flutter/material.dart';
import 'package:app/style/font.dart';

class Detail extends StatefulWidget {
  final ApiResponse item;
  const Detail({
    super.key,
    required this.item,
    });

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  late TextEditingController titleController;
  late TextEditingController contentController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    contentController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 100, 50, 0),
          child: ListView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    CustomTextFormFill(
                      fontStyle: FontStyle.h2FontStyle,
                      maxLines: 2,
                      hintText: 'Title', controller: titleController,
                    ),
                    const SizedBox(height: 10),
                    CustomTextFormFill(
                      fontStyle: FontStyle.bodyFontStyle,
                      maxLines: 35,
                      hintText: 'List of tasks', controller: contentController,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    text: 'Cancel',
                    onPressed: () {},
                  ),
                  CustomButton(
                    text: 'Save',
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
