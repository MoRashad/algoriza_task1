// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BuildPage extends StatelessWidget {
  String urlimage;
  String title;
  String subTitle;
  BuildPage({
    Key? key,
    required this.urlimage,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            urlimage,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              subTitle,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
