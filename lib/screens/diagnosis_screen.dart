import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class DiagnosedResultsScreen extends StatelessWidget {
  DiagnosedResultsScreen({super.key, required this.index});

  final int index;

  final List<String> diagnosis = [
    "You have been diagnosed with OSTEOPOROSIS. This condition weakens bones, making them fragile and more likely to break.",
    "You have been diagnosed with OSTEOARTHRITIS. This condition causes wear and tear on the cartilage of your joints, leading to pain and stiffness",
    "You have been diagnosed with RHEUMATOID ARTHRITIS. This is an autoimmune condition that causes chronic inflammation in the joints, leading to pain and swelling.",
  ];

  final List<String> actions = [
    "> Increase Calsium and Vitamin D intake\n> Engage in weight-bearing exercises\n> Avoid Smoking and Excessive alcohol consumption\n> Consider medication to strengthen bones",
    "> Maintain a healthy weight\n> Exercise regularly\n> Use hot and cold therapy\n> Consider medication to reduce pain and inflammation",
    "> Take medication to reduce inflammation\n> Exercise regularly\n> Use hot and cold therapy\n> Consider surgery to repair damaged joints",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 3.h,
            ),
            Text(
              "Diagnostic Results",
              style: TextStyle(
                  fontSize: 28.dp,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                padding: EdgeInsets.all(15.dp),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 215, 255),
                  borderRadius: BorderRadius.circular(15.dp),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Text(
                  diagnosis[index],
                  style: TextStyle(
                      fontSize: 18.dp,
                      fontFamily: 'roboto',
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "Suggested Actions",
              style: TextStyle(
                  fontSize: 28.dp,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(15.dp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.dp),
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    width: 1.dp,
                  ),
                ),
                child: Text(
                  actions[index],
                  style: TextStyle(
                      fontSize: 18.dp,
                      fontFamily: 'roboto',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
          ],
        ),
      ),
    );
  }
}
