import 'package:flutter/material.dart';
import 'package:skillsparkresume/utils/all_colors.dart';
import 'package:skillsparkresume/utils/custom_widget.dart';
import 'package:skillsparkresume/utils/global.dart';
import 'package:skillsparkresume/utils/text_style.dart';

class project_page extends StatefulWidget {
  const project_page({super.key});

  @override
  State<project_page> createState() => _project_pageState();
}

class _project_pageState extends State<project_page> {
  GlobalKey<FormState> projectKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController rolesController = TextEditingController();
  TextEditingController techController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  bool c_language = false;
  bool c_plus = false;
  bool flutter = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
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
                        padding: EdgeInsets.only(top: 30, left: 25, right: 25),
                        height: MediaQuery.of(context).size.height / 1.05,
                        color: primaryWhite,
                        child: Form(
                          key: projectKey,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 25),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Project Title",
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
                                                  return "Enter course/degree.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.project_title =
                                                    val ?? "";
                                              },
                                              controller: titleController,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText:
                                                      "Resume Builder App",
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
                              Row(
                                children: [
                                  Text(
                                    "Technologies",
                                    style: TextStyling.heading,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      value: c_language,
                                      activeColor: primaryBlueColor,
                                      onChanged: (val) {
                                        setState(() {
                                          c_language = val!;
                                        });
                                      }),
                                  Text(
                                    "C Programming",
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
                                      value: c_plus,
                                      activeColor: primaryBlueColor,
                                      onChanged: (val) {
                                        setState(() {
                                          c_plus = val!;
                                        });
                                      }),
                                  Text(
                                    "C++",
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
                                      value: flutter,
                                      activeColor: primaryBlueColor,
                                      onChanged: (val) {
                                        setState(() {
                                          flutter = val!;
                                        });
                                      }),
                                  Text(
                                    "Flutter",
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
                                          "Roles",
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
                                                  return "Enter school/college/institute.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.roles = val ?? "";
                                              },
                                              controller: rolesController,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText:
                                                      "Organize team members, Code analysis",
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
                                          "Technologies",
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
                                                  return "Enter Technologies.";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.tech = val ?? "";
                                              },
                                              controller: techController,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: "5 - Programmers",
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
                                          "Project Description",
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
                                                  return "Enter Project Discription";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.description = val ?? "";
                                              },
                                              controller: descriptionController,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText:
                                                      "Enter Your Project Description",
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
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    OutlinedButton(
                                      onPressed: () {
                                        if (projectKey.currentState!
                                            .validate()) {
                                          projectKey.currentState!.reset();

                                          titleController.clear();
                                          rolesController.clear();
                                          techController.clear();
                                          descriptionController.clear();

                                          setState(() {
                                            c_language = false;
                                            c_plus = false;
                                            flutter = false;
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
                                        if (c_language) {
                                          Global.languages.add("C Programming");
                                        }
                                        if (c_plus) {
                                          Global.languages.add("c++");
                                        }
                                        if (flutter) {
                                          Global.languages.add("Flutter");
                                        }
                                        if (projectKey.currentState!
                                            .validate()) {
                                          projectKey.currentState!.save();

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
                                          titleController.clear();
                                          rolesController.clear();
                                          techController.clear();
                                          descriptionController.clear();

                                          setState(() {
                                            c_language = false;
                                            c_plus = false;
                                            flutter = false;
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
            title: "Projects",
            child: Container(),
          ),
        ],
      ),
    );
  }
}
