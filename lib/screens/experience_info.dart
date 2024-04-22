import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skillsparkresume/utils/all_colors.dart';
import 'package:skillsparkresume/utils/custom_widget.dart';
import 'package:skillsparkresume/utils/global.dart';
import 'package:skillsparkresume/utils/text_style.dart';

class experience_info extends StatefulWidget {
  const experience_info({super.key});

  @override
  State<experience_info> createState() => _experience_infoState();
}

class _experience_infoState extends State<experience_info> {
  String radioStatus = "";
  GlobalKey<FormState> experienceKey = GlobalKey<FormState>();
  TextEditingController company_nameController = TextEditingController();
  TextEditingController schoolController = TextEditingController();
  TextEditingController rolesController = TextEditingController();
  TextEditingController joinController = TextEditingController();
  TextEditingController exitController = TextEditingController();
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
                    height: 190,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 20, left: 20, bottom: 120),
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 35, left: 25, right: 25),
                          height: MediaQuery.of(context).size.height / 1.05,
                          color: primaryWhite,
                          child: Form(
                            key: experienceKey,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 25),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Company Name",
                                            style: TextStyling.heading,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter Company Name";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  Global.company_name =
                                                      val ?? "";
                                                },
                                                controller:
                                                    company_nameController,
                                                decoration: InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    hintText:
                                                        "New Enterprise,San Francisco",
                                                    hintStyle: TextStyle(
                                                        color: secondaryGrey,
                                                        fontSize: 20)),
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
                                        padding: const EdgeInsets.only(top: 20),
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
                                                  Global.school = val ?? "";
                                                },
                                                controller: schoolController,
                                                decoration: InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    hintText:
                                                        "Quality Test Engineer",
                                                    hintStyle: TextStyle(
                                                        color: secondaryGrey,
                                                        fontSize: 20)),
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
                                            "Roles (optional)",
                                            style: TextStyling.heading,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                maxLines: 3,
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter Roles First";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  Global.roles = val ?? "";
                                                },
                                                controller: rolesController,
                                                decoration: InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    hintText:
                                                        "Working with team members to come up with new concepts and product analysis...",
                                                    hintStyle: TextStyle(
                                                        color: secondaryGrey,
                                                        fontSize: 20)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Employed Status",
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                radioStatus = "previous";
                                              });
                                            },
                                            child: Radio(
                                                value: "previous",
                                                groupValue: radioStatus,
                                                activeColor: primaryBlueColor,
                                                onChanged: (val) {
                                                  setState(() {
                                                    radioStatus = val!;
                                                  });
                                                }),
                                          ),
                                          Text(
                                            "Previously Employed",
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              color: primaryBlueColor,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    radioStatus = "current";
                                                  });
                                                },
                                                child: Radio(
                                                    value: "current",
                                                    groupValue: radioStatus,
                                                    activeColor:
                                                        primaryBlueColor,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        radioStatus = val!;
                                                      });
                                                    }),
                                              ),
                                              Text(
                                                "Currently Employed",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  color: primaryBlueColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        color: secondaryGrey,
                                        thickness: 2,
                                      ),
                                      if (radioStatus == "previous")
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 90, top: 10),
                                                  child: Text(
                                                    "Date Joined",
                                                    style: TextStyling
                                                        .primaryLabels,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 38, top: 10),
                                                  child: Text(
                                                    "Date Exit",
                                                    style: TextStyling
                                                        .primaryLabels,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: 55,
                                                      width: 100,
                                                      child: TextFormField(
                                                        validator: (val) {
                                                          if (val!.isEmpty) {
                                                            return "Enter school/college/institute.";
                                                          }
                                                          return null;
                                                        },
                                                        onSaved: (val) {
                                                          Global.join =
                                                              val ?? "";
                                                        },
                                                        controller:
                                                            joinController,
                                                        decoration: InputDecoration(
                                                            border:
                                                                OutlineInputBorder(),
                                                            hintText:
                                                                "DD/MM/YYYY",
                                                            hintStyle: TextStyle(
                                                                fontSize: 16,
                                                                height: 1.5,
                                                                color:
                                                                    secondaryGrey)),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: 55,
                                                      width: 100,
                                                      child: TextFormField(
                                                        validator: (val) {
                                                          if (val!.isEmpty) {
                                                            return "Enter school/college/institute.";
                                                          }
                                                          return null;
                                                        },
                                                        onSaved: (val) {
                                                          Global.exit =
                                                              val ?? "";
                                                        },
                                                        controller:
                                                            exitController,
                                                        decoration: InputDecoration(
                                                            border:
                                                                OutlineInputBorder(),
                                                            hintText:
                                                                "DD/MM/YYYY",
                                                            hintStyle: TextStyle(
                                                                fontSize: 16,
                                                                height: 1.5,
                                                                color:
                                                                    secondaryGrey)),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      else if (radioStatus == "current")
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 90, top: 10),
                                                  child: Text(
                                                    "Date Joined",
                                                    style: TextStyling
                                                        .primaryLabels,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: 55,
                                                      child: TextFormField(
                                                        validator: (val) {
                                                          if (val!.isEmpty) {
                                                            return "Enter school/college/institute.";
                                                          }
                                                          return null;
                                                        },
                                                        onSaved: (val) {
                                                          Global.join =
                                                              val ?? "";
                                                        },
                                                        controller:
                                                            joinController,
                                                        decoration: InputDecoration(
                                                            border:
                                                                OutlineInputBorder(),
                                                            hintText:
                                                                "DD/MM/YYYY",
                                                            hintStyle: TextStyle(
                                                                fontSize: 16,
                                                                height: 1.5,
                                                                color:
                                                                    secondaryGrey)),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 230,
                                                  ),
                                                ],
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
                                          if (experienceKey.currentState!
                                              .validate()) {
                                            experienceKey.currentState!.save();

                                            company_nameController.clear();
                                            schoolController.clear();
                                            rolesController.clear();

                                            setState(() {
                                              radioStatus = "";
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
                                          if (experienceKey.currentState!
                                              .validate()) {
                                            experienceKey.currentState!.save();

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

                                            company_nameController.clear();
                                            schoolController.clear();
                                            rolesController.clear();

                                            setState(() {
                                              radioStatus = "";
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
              title: "Experience",
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
