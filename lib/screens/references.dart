import 'package:flutter/material.dart';
import 'package:skillsparkresume/utils/all_colors.dart';
import 'package:skillsparkresume/utils/custom_widget.dart';
import 'package:skillsparkresume/utils/global.dart';
import 'package:skillsparkresume/utils/text_style.dart';

class references extends StatefulWidget {
  const references({super.key});

  @override
  State<references> createState() => _referencesState();
}

class _referencesState extends State<references> {
  GlobalKey<FormState> referenceKey = GlobalKey<FormState>();
  TextEditingController referenceController = TextEditingController();
  TextEditingController designationController = TextEditingController();
  TextEditingController instituteController = TextEditingController();

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
                    height: 210,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 20, left: 20, bottom: 300),
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 50, left: 25, right: 25),
                          height: MediaQuery.of(context).size.height / 1.60,
                          color: Colors.white,
                          child: Form(
                            key: referenceKey,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Reference Name",
                                            style: TextStyling.heading,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter reference name.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.reference = val ?? "";
                                              },
                                              controller: referenceController,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: "Suresh Shah",
                                                  hintStyle: TextStyle(
                                                      color: secondaryGrey,
                                                      fontSize: 20)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Designation",
                                            style: TextStyling.heading,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter designation.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.designation = val ?? "";
                                              },
                                              controller: designationController,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText:
                                                      "Marketing Manager, ID-342332",
                                                  hintStyle: TextStyle(
                                                      color: secondaryGrey,
                                                      fontSize: 20)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 30),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Organization/Institute",
                                            style: TextStyling.heading,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter organization/institute.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.institute = val ?? "";
                                              },
                                              controller: instituteController,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText:
                                                      "Green Energy Pvt. Ltd.",
                                                  hintStyle: TextStyle(
                                                      color: secondaryGrey,
                                                      fontSize: 20)),
                                            ),
                                          ),
                                        ],
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
                                          if (referenceKey.currentState!
                                              .validate()) {
                                            referenceKey.currentState!.reset();

                                            referenceController.clear();
                                            designationController.clear();
                                            instituteController.clear();
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
                                          if (referenceKey.currentState!
                                              .validate()) {
                                            referenceKey.currentState!.save();

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

                                            referenceController.clear();
                                            designationController.clear();
                                            instituteController.clear();
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
              title: "References",
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
