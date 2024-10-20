import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:myapp/widgets/button.dart';
import 'package:myapp/widgets/labled_textfield.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"), // Your image path
              fit: BoxFit.cover, // Adjust how the image fits the container
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.dp, vertical: 18.dp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10.dp, 18.dp, 10.dp, 18.dp),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(59, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(10.dp)),
                      border: Border.all(
                        color: const Color.fromARGB(140, 255, 255, 255),
                        width: 2.dp,
                      ),
                    ),
                    child: const Column(
                      children: [
                        LabledTextfieldWidget(
                          label: 'Full Name',
                        ),
                        LabledTextfieldWidget(
                          label: 'Age',
                        ),
                        LabledTextfieldWidget(
                          label: 'Email',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10.dp, 10.dp, 10.dp, 0),
                    child: Column(
                      children: [
                        const LabledTextfieldWidget(
                          label: 'Weight',
                        ),
                        const LabledTextfieldWidget(
                          label: 'Gender',
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Message",
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.dp)),
                                ),
                                hintText: "Message",
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10.dp,
                                  vertical: 20.dp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  ButtonWidget(
                    fontSize: 14.dp,
                    height: 7.h,
                    width: 90.w,
                    bgColor: const Color(0xFF2C2C2C),
                    text: 'Register',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
