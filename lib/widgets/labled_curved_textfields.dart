import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class LabledCurvedTextfieldWidget extends StatelessWidget {
  const LabledCurvedTextfieldWidget({super.key, required this.label});

  final String label;

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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              //add a black curved border
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(50.dp),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.dp,
                ),
              ),
              hintText: label,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10.dp,
                vertical: 10.dp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
