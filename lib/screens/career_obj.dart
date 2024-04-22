import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skillsparkresume/utils/all_colors.dart';
import 'package:skillsparkresume/utils/custom_widget.dart';
import 'package:skillsparkresume/utils/global.dart';
import 'package:skillsparkresume/utils/text_style.dart';

class career_obj_page extends StatefulWidget {
  const career_obj_page({super.key});

  @override
  State<career_obj_page> createState() => _career_obj_pageState();
}

class _career_obj_pageState extends State<career_obj_page> {
  GlobalKey<FormState> carrier_Objective = GlobalKey<FormState>();
  GlobalKey<FormState> current_designation = GlobalKey<FormState>();
  TextEditingController carrierController = TextEditingController();
  TextEditingController designationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Center(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 220,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 70),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3,
                            color: primaryWhite,
                            padding: const EdgeInsets.only(
                                left: 50, right: 50, top: 30),
                            child: Form(
                              key: carrier_Objective,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Carrier Objective",
                                        style: TextStyling.heading,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          maxLines: 7,
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter Carrier Objective";
                                            }
                                            return null;
                                          },
                                          onSaved: (val) {
                                            Global.carrier_obj = val ?? "";
                                          },
                                          decoration: InputDecoration(
                                            label: Text(
                                              "Descripation",
                                              style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.w500,
                                                color: secondaryGrey,
                                              ),
                                            ),
                                            border: const OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 4,
                              color: primaryWhite,
                              padding: const EdgeInsets.only(
                                  left: 25, right: 25, top: 30),
                              child: Form(
                                key: current_designation,
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Current Designation (Experienced",
                                              style: TextStyling.heading,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Candidate)",
                                              style: TextStyling.heading,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 20),
                                            child: TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter Current Designation";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.current_designation =
                                                    val ?? "";
                                              },
                                              decoration: InputDecoration(
                                                label: Text(
                                                  "Software Engineer",
                                                  style: TextStyle(
                                                    fontSize: 23,
                                                    fontWeight: FontWeight.w500,
                                                    color: secondaryGrey,
                                                  ),
                                                ),
                                                border:
                                                    const OutlineInputBorder(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                OutlinedButton(
                                  onPressed: () {
                                    if (carrier_Objective.currentState!
                                            .validate() ||
                                        current_designation.currentState!
                                            .validate()) {
                                      carrier_Objective.currentState!.reset();
                                      current_designation.currentState!.reset();

                                      carrierController.clear();
                                      designationController.clear();
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
                                    if (carrier_Objective.currentState!
                                            .validate() ||
                                        current_designation.currentState!
                                            .validate()) {
                                      carrier_Objective.currentState!.save();
                                      current_designation.currentState!.save();

                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          behavior: SnackBarBehavior.floating,
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
                                            "Carrier Objective Information Saved SuccessFully!!!",
                                          ),
                                        ),
                                      );
                                      carrierController.clear();
                                      designationController.clear();
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
                  ],
                ),
              ),
              CustomWidget.getAppBar(
                context: context,
                title: "Carreir Objective",
                child: Container(),
              ),
            ],
          ),
        ));
  }
}
