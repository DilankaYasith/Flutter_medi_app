import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:myapp/screens/form_screen.dart';
import 'package:myapp/screens/identify_screen.dart';
import 'package:myapp/screens/profile_screen.dart';
import 'package:myapp/screens/tips_screen.dart';
import 'package:myapp/widgets/button.dart';

import 'signin_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, // Align all children to the start (left)
          //spaceEvenly: Align children with equal space between them
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 35.h,
              width: 100.w,
              child: const Image(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'The care you need at the right time.',
                style: TextStyle(
                  fontSize: 26.dp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 58, 132, 60),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //Navigation to the Sign In screen
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SigninScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 13, 187, 143),
                    minimumSize: Size(40.w, 5.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Sign In!',
                    style: TextStyle(
                      fontSize: 14.dp,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    //Navigation to the Sign Up screen
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FormScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 13, 187, 143),
                    minimumSize: Size(40.w, 5.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 14.dp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment
                  .centerLeft, // Align this specific Text widget to the left
              child: Text(
                'Already registered?',
                style: TextStyle(
                  fontSize: 14.dp,
                  color: const Color.fromARGB(255, 58, 132, 60),
                ),
              ),
            ),
            Align(
              alignment: Alignment
                  .center, // Align this specific Text widget to the left
              child: SizedBox(
                height: 30.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //space evenly: Align children with equal space between them
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonWidget(
                      fontSize: 14.dp,
                      height: 7.h,
                      width: 95.w,
                      bgColor: const Color.fromARGB(255, 0, 19, 117),
                      text: 'Identify your bone disease',
                      onPressed: () {
                        //Navigation to the Bone Disease Identification screen
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => IdentifyScreen()));
                      },
                    ),
                    ButtonWidget(
                      fontSize: 14.dp,
                      height: 7.h,
                      width: 95.w,
                      bgColor: const Color.fromARGB(255, 0, 19, 117),
                      text: 'Healthy Tips',
                      onPressed: () {
                        //Navigation to the Healthy Tips screen
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const TipsScreen()));
                      },
                    ),
                    ButtonWidget(
                      fontSize: 14.dp,
                      height: 7.h,
                      width: 95.w,
                      bgColor: const Color.fromARGB(255, 0, 19, 117),
                      text: 'BoneDoc Profile',
                      onPressed: () {
                        //Navigation to the BoneDoc Profile screen
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ProfileScreen()));
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
