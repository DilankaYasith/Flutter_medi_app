import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class SmallTextFields extends StatelessWidget {
  const SmallTextFields(
      {super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
                fontSize: 20.dp,
                fontFamily: 'roboto',
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 20.w,
            height: 5.h,
            child: TextFormField(
              //validator: validator,
              controller: TextEditingController(),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(46, 166, 45, 247),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.dp),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10.dp,
                  vertical: 10.dp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
