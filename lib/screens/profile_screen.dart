import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:myapp/widgets/button.dart';
import 'package:myapp/widgets/labled_curved_textfields.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.dp, vertical: 10.dp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "BONEDOC PROFILE",
                style: TextStyle(
                    fontSize: 28.dp,
                    fontFamily: 'roboto',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3.h,
              ),
              CircleAvatar(
                radius: 50.dp,
                backgroundImage: const AssetImage('assets/images/propic.png'),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(5.dp),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 215, 255),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.dp,
                      ),
                    ),
                    width: 30.w,
                    child: Row(
                      children: [
                        Icon(
                          Icons.check,
                          size: 22.dp,
                        ),
                        Text(
                          "  47 Years",
                          style: TextStyle(
                            fontSize: 14.dp,
                            fontFamily: 'roboto',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.dp),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 215, 255),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.dp,
                      ),
                    ),
                    width: 30.w,
                    child: Row(
                      children: [
                        Icon(
                          Icons.check,
                          size: 22.dp,
                        ),
                        Text(
                          "  Female",
                          style: TextStyle(
                            fontSize: 14.dp,
                            fontFamily: 'roboto',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              const LabledCurvedTextfieldWidget(label: "Bone Density"),
              SizedBox(
                height: 2.h,
              ),
              const LabledCurvedTextfieldWidget(label: "Fracture Risk"),
              SizedBox(
                height: 2.h,
              ),
              const LabledCurvedTextfieldWidget(label: "Exercise Routine"),
              SizedBox(
                height: 2.h,
              ),
              const LabledCurvedTextfieldWidget(label: "Dietary Supplement"),
              SizedBox(
                height: 4.h,
              ),
              ButtonWidget(
                  onPressed: () {},
                  fontSize: 14.dp,
                  height: 6.h,
                  width: 65.w,
                  bgColor: const Color(0xFF2C2C2C),
                  text: "Update"),
            ],
          ),
        ),
      )),
    );
  }
}
