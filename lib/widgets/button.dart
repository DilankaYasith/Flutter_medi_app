import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.onPressed,
      required this.fontSize,
      required this.height,
      required this.width,
      required this.bgColor,
      required this.text});

  final Function() onPressed;
  final double fontSize;
  final double height;
  final double width;
  final Color bgColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.dp),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: 'roboto',
          color: Colors.white,
        ),
      ),
    );
  }
}
