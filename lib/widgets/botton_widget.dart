// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BottonWidget extends StatelessWidget {
  String title;
  Color color;
  double width;
  double height;
  double radius;
  GestureTapCallback onTap;
  Color textColor;

  BottonWidget({
    Key? key,
    required this.title,
    required this.color,
    this.width = double.infinity,
    this.height = 40,
    this.radius = 10,
    required this.onTap,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: color,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
