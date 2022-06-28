import 'package:flutter/material.dart';

import 'package:algoriza_task1/widgets/text_widget.dart';

class OutlineButton extends StatelessWidget {
  VoidCallback onPressed;
  Color borderColor;
  double height;
  String image;
  String text;
  Color textColor;
  double textSize;
  OutlineButton({
    Key? key,
    required this.onPressed,
    required this.borderColor,
    this.height = 40,
    required this.image,
    required this.text,
    required this.textColor,
    this.textSize = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        onPressed();
      },
      style: OutlinedButton.styleFrom(
        //backgroundColor: Colors.black,
        side: BorderSide(
          color: borderColor,
          width: 2,
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              image,
              fit: BoxFit.cover,
            ),
            TextWidget(text: text, color: textColor, textsize: textSize),
          ],
        ),
      ),
    );
  }
}
