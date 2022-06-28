// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.textsize,
    this.isTitle = false,
    this.maxLines = 10,
    this.letterSpacing = 1,
  }) : super(key: key);
  final String text;
  final Color color;
  final double textsize;
  bool isTitle;
  int maxLines;
  double letterSpacing;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: color,
        fontSize: textsize,
        fontWeight: isTitle ? FontWeight.bold : FontWeight.normal,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
