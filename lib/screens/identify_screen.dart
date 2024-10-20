import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:myapp/screens/diagnosis_screen.dart';
import 'package:myapp/widgets/button.dart';
import 'package:myapp/widgets/small_labled_textfields.dart';

class IdentifyScreen extends StatefulWidget {
  const IdentifyScreen({super.key});

  @override
  State<IdentifyScreen> createState() => _IdentifyScreenState();
}

class _IdentifyScreenState extends State<IdentifyScreen> {
  int index = 0;
  final formKey = GlobalKey<FormState>();
  // List of symptoms
  final List<String> symptomsList = [
    'Loss of height',
    'Height loss',
    'Joint stiffness',
    'Cartilage wear',
    'Joint swelling',
    'Morning stiffness'
  ];

  // Variable to hold the selected index
  int? selectedSymptomIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Identify Bone Disease",
                style: TextStyle(
                    fontSize: 28.dp,
                    fontFamily: 'roboto',
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                    child: Text(
                      "Select Your Symptoms",
                      style: TextStyle(
                          fontSize: 20.dp,
                          fontFamily: 'roboto',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20.dp),
                child: Container(
                  height: 27.h,
                  padding: EdgeInsets.symmetric(horizontal: 10.dp),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(46, 166, 45, 247),
                    borderRadius: BorderRadius.circular(25.dp),
                  ),
                  child: StatefulBuilder(
                    builder: (context, setState) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: symptomsList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              RadioListTile<int>(
                                value: index,
                                groupValue: selectedSymptomIndex,
                                title: Text(
                                  symptomsList[index],
                                  style: TextStyle(
                                    fontSize: 16.dp,
                                    fontFamily: 'roboto',
                                  ),
                                ),
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedSymptomIndex = value;
                                    // print(selectedSymptomIndex);
                                  });
                                },
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.black,
                                indent: 20.dp,
                                endIndent: 20.dp,
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    const SmallTextFields(
                      label: "Intensity",
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    const SmallTextFields(
                      label: "Duration",
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    const SmallTextFields(
                      label: "Frequency",
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    const SmallTextFields(
                      label: "Characteristics",
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    const SmallTextFields(
                      label: "Location",
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    ButtonWidget(
                      onPressed: () {
                        if (selectedSymptomIndex == null ||
                            selectedSymptomIndex == -1) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Please select a symptom'),
                            ),
                          );
                          return;
                        } else {
                          setState(() {
                            if (selectedSymptomIndex == 0 ||
                                selectedSymptomIndex == 1) {
                              index = 0;
                            } else if (selectedSymptomIndex == 2 ||
                                selectedSymptomIndex == 3) {
                              index = 1;
                            } else if (selectedSymptomIndex == 4 ||
                                selectedSymptomIndex == 5) {
                              index = 2;
                            }
                          });
                          //print(index.toString() + "index");
                          // Navigate to diagnosis result screen

                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  DiagnosedResultsScreen(index: index),
                            ),
                          );
                        }
                      },
                      fontSize: 14.dp,
                      height: 7.h,
                      width: 45.w,
                      bgColor: const Color(0xFF65558F),
                      text: "Submit Symptoms",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
