import 'package:flutter/material.dart';
import 'package:skillsparkresume/utils/all_colors.dart';
import 'package:skillsparkresume/utils/custom_widget.dart';
import 'package:skillsparkresume/utils/global.dart';
import 'package:skillsparkresume/utils/text_style.dart';

class personal_info extends StatefulWidget {
  const personal_info({super.key});

  @override
  State<personal_info> createState() => _personal_infoState();
}

class _personal_infoState extends State<personal_info> {
  GlobalKey<FormState> personalKey = GlobalKey<FormState>();
  TextEditingController dobController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  String radioStatus = "";
  bool english = false;
  bool hindi = false;
  bool gujarati = false;
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
                            key: personalKey,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 25),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "DOB",
                                            style: TextStyling.heading,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter DOB";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  Global.DOB = val ?? "";
                                                },
                                                controller: dobController,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: "DD/MM/YYYY",
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Gender",
                                      style: TextStyling.heading,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                        value: "male",
                                        groupValue: radioStatus,
                                        activeColor: primaryBlueColor,
                                        onChanged: (val) {
                                          setState(() {
                                            radioStatus = val!;
                                          });
                                        }),
                                    Text(
                                      "Male",
                                      style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600,
                                        color: primaryBlueColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                        value: "female",
                                        groupValue: radioStatus,
                                        activeColor: primaryBlueColor,
                                        onChanged: (val) {
                                          setState(() {
                                            radioStatus = val!;
                                          });
                                        }),
                                    Text(
                                      "Female",
                                      style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600,
                                        color: primaryBlueColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Language Known",
                                      style: TextStyling.heading,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        value: english,
                                        activeColor: primaryBlueColor,
                                        onChanged: (val) {
                                          setState(() {
                                            english = val!;
                                          });
                                        }),
                                    Text(
                                      "English",
                                      style: TextStyle(
                                          color: primaryBlueColor,
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        value: hindi,
                                        activeColor: primaryBlueColor,
                                        onChanged: (val) {
                                          setState(() {
                                            hindi = val!;
                                          });
                                        }),
                                    Text(
                                      "Hindi",
                                      style: TextStyle(
                                          color: primaryBlueColor,
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        value: gujarati,
                                        activeColor: primaryBlueColor,
                                        onChanged: (val) {
                                          setState(() {
                                            gujarati = val!;
                                          });
                                        }),
                                    Text(
                                      "Gujarati",
                                      style: TextStyle(
                                          color: primaryBlueColor,
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 25),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Nationality",
                                            style: TextStyling.heading,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter Nationality";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  Global.nationality =
                                                      val ?? "";
                                                },
                                                controller:
                                                    nationalityController,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: "Indian",
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
                                          Global.gender = radioStatus;
                                          if (english) {
                                            Global.languages.add("English");
                                          }
                                          if (hindi) {
                                            Global.languages.add("Hindi");
                                          }
                                          if (gujarati) {
                                            Global.languages.add("Gujarati");
                                          }

                                          if (personalKey.currentState!
                                              .validate()) {
                                            personalKey.currentState!.reset();

                                            dobController.clear();
                                            nationalityController.clear();

                                            setState(() {
                                              radioStatus = "";
                                              english = false;
                                              hindi = false;
                                              gujarati = false;
                                            });
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
                                          if (english) {
                                            Global.languages.add("English");
                                          }
                                          if (hindi) {
                                            Global.languages.add("Hindi");
                                          }
                                          if (gujarati) {
                                            Global.languages.add("Gujarati");
                                          }
                                          if (personalKey.currentState!
                                              .validate()) {
                                            personalKey.currentState!.save();

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
                                                  "Personal Information Saved SuccessFully!!!",
                                                ),
                                              ),
                                            );
                                            dobController.clear();
                                            nationalityController.clear();

                                            setState(() {
                                              radioStatus = "";
                                              english = false;
                                              hindi = false;
                                              gujarati = false;
                                            });
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
              title: "Personal Details",
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
