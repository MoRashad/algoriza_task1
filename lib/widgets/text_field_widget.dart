// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool isObscure;
  Color color;
  TextInputField(
      {Key? key,
      required this.controller,
      required this.label,
      this.isObscure = false,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: label,
        suffixIcon: isObscure ? const Icon(Icons.password) : null,
        labelStyle: const TextStyle(fontSize: 20),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: color)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: color)),
      ),
      obscureText: isObscure ? true : false,
    );
  }
}
