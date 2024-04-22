import 'package:flutter/material.dart';
import 'package:skillsparkresume/utils/all_colors.dart';
import 'package:skillsparkresume/utils/custom_widget.dart';
import 'package:skillsparkresume/utils/global.dart';
import 'package:skillsparkresume/utils/text_style.dart';

class education extends StatefulWidget {
  const education({super.key});

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  bool isEducation = true;
  GlobalKey<FormState> educationKey = GlobalKey<FormState>();
  TextEditingController courseController = TextEditingController();
  TextEditingController school1Controller = TextEditingController();
  TextEditingController school2Controller = TextEditingController();
  TextEditingController yearController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 215,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 20, left: 20, bottom: 120),
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 30, left: 25, right: 25),
                          height: MediaQuery.of(context).size.height / 1.35,
                          color: primaryWhite,
                          child: Form(
                            key: educationKey,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 25),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Course/Degree",
                                            style: TextStyling.heading,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter course/degree.";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  Global.course = val ?? "";
                                                },
                                                controller: courseController,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText:
                                                      "B .Tech Information Technology",
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 25),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "School/College/Institute",
                                            style: TextStyling.heading,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter school/college/institute.";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  Global.school1 = val ?? "";
                                                },
                                                controller: school1Controller,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText:
                                                      "Bhagvan mahavir Univercity",
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 25),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "School/College/Institute",
                                            style: TextStyling.heading,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter school/college/institute.";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  Global.school2 = val ?? "";
                                                },
                                                controller: school2Controller,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: "70% (or) 70 CGPA",
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 25),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Year Of Pass",
                                            style: TextStyling.heading,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                keyboardType:
                                                    TextInputType.number,
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter Year of Passing First";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  Global.year = val ?? "";
                                                },
                                                controller: yearController,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: "2019",
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      OutlinedButton(
                                        onPressed: () {
                                          if (educationKey.currentState!
                                              .validate()) {
                                            educationKey.currentState!.reset();

                                            courseController.clear();
                                            school1Controller.clear();
                                            school2Controller.clear();
                                            yearController.clear();
                                          }
                                        },
                                        style: OutlinedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 40, vertical: 15),
                                          foregroundColor: primaryBlueColor,
                                        ),
                                        child: Text(
                                          "Clear",
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (educationKey.currentState!
                                              .validate()) {
                                            educationKey.currentState!.save();

                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                behavior:
                                                    SnackBarBehavior.floating,
                                                backgroundColor:
                                                    Colors.green.shade500,
                                                action: SnackBarAction(
                                                  label: "Next",
                                                  onPressed: () {
                                                    setState(() {
                                                      Navigator.of(context)
                                                          .pushNamedAndRemoveUntil(
                                                              "resume_workspace",
                                                              (route) => false);
                                                    });
                                                  },
                                                  textColor: primaryWhite,
                                                ),
                                                content: Text(
                                                  "Education information Saved SuccessFully!!!",
                                                ),
                                              ),
                                            );

                                            courseController.clear();
                                            school1Controller.clear();
                                            school2Controller.clear();
                                            yearController.clear();
                                          }
                                        },
                                        style: OutlinedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 40, vertical: 15),
                                          foregroundColor: primaryWhite,
                                          backgroundColor: primaryBlueColor,
                                        ),
                                        child: Text(
                                          "Save",
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomWidget.getAppBar(
              context: context,
              title: "Education",
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
