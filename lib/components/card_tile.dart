import 'package:flutter/material.dart';
import 'package:app/style/font.dart';
import 'package:app/data/response.dto.dart';

class CustomCardTile extends StatelessWidget {
  final int id;
  final String title;
  final String content;
  final DateTime createdAt;
  final DateTime updatedAt;
  final VoidCallback onClick;

  const CustomCardTile({
    required this.id,
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.content,
    required this.onClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final String date = dateform
    return ListTile(
      title: Text(title, style: FontStyle.h2FontStyle),
      subtitle: Text(content, style: FontStyle.h3FontStyle),
      onTap: () {
        Navigator.pushNamed(
          context,
          '/detail',
          arguments: ApiResponse(
            id: id,
            title: title,
            content: content,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
        );
      },
      trailing: const Text(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.black),
      ),
    );
  }
}