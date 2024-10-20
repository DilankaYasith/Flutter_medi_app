import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class LabledTextfieldWidget extends StatelessWidget {
  const LabledTextfieldWidget({super.key, required this.label, this.height});

  final String label;
  final bool? height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 18.dp,
                color: Colors.black,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 1.5.h,
        ),
        //white color filled text feild for full name
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10.dp)),
            ),
            hintText: label,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.dp,
              vertical: (height ?? false) ? 20.dp : 10.dp,
            ),
          ),
        ),
      ],
    );
  }
}
