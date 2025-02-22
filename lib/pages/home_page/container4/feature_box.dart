import 'package:flutter/material.dart';

class FeatureBox extends StatelessWidget {
  final String title;
  final String description;
  final double titleFontsize;
  final double descriptionFontsize;

  const FeatureBox({
    super.key,
    required this.title,
    required this.description,
    this.titleFontsize = 20,
    this.descriptionFontsize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "| $title",
          style: TextStyle(
            fontFamily: 'Actor',
            fontWeight: FontWeight.bold,
            fontSize: titleFontsize,
          ),
        ),
        SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(fontSize: descriptionFontsize),
        ),
      ],
    );
  }
}