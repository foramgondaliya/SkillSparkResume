import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skillsparkresume/model/resume.dart';
import 'package:skillsparkresume/utils/all_colors.dart';
import 'package:skillsparkresume/utils/custom_widget.dart';
import 'package:skillsparkresume/utils/global.dart';
import 'package:skillsparkresume/utils/text_style.dart';

class declaration extends StatefulWidget {
  const declaration({super.key});

  @override
  State<declaration> createState() => _declarationState();
}

class _declarationState extends State<declaration> {
  GlobalKey<FormState> declarationKey = GlobalKey<FormState>();
  TextEditingController disController = TextEditingController();
  TextEditingController dtController = TextEditingController();
  TextEditingController placeController = TextEditingController();

  bool on = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              children: [
                                (on)
                                    ? Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                1.6,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 130, top: 25),
                                                  child: Text(
                                                    "Declaration",
                                                    style: TextStyling.heading,
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      on = !on;
                                                    });
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 25),
                                                    child: Switch(
                                                        activeColor:
                                                            primaryBlueColor,
                                                        value: on,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            on = val;
                                                          });
                                                        }),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 50, top: 10),
                                                  child: Icon(
                                                    Icons.attractions,
                                                    size: 60,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Form(
                                              key: declarationKey,
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20,
                                                            right: 20,
                                                            top: 30),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: TextFormField(
                                                            validator: (val) {
                                                              if (val!
                                                                  .isEmpty) {
                                                                return "Enter Description";
                                                              }
                                                              return null;
                                                            },
                                                            onSaved: (val) {
                                                              Global.dis =
                                                                  val ?? "";
                                                            },
                                                            controller:
                                                                disController,
                                                            decoration:
                                                                InputDecoration(
                                                              border:
                                                                  OutlineInputBorder(),
                                                              hintText:
                                                                  "Description",
                                                              hintStyle: TextStyle(
                                                                  color:
                                                                      secondaryGrey,
                                                                  fontSize: 20),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20,
                                                            top: 50,
                                                            right: 20),
                                                    child: Divider(
                                                      color: secondaryGrey,
                                                      thickness: 1,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 30,
                                                            left: 20,
                                                            right: 20),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      right:
                                                                          90),
                                                              child: Text(
                                                                "Date",
                                                                style: TextStyling
                                                                    .secondaryLabels,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 21),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            90),
                                                                    child: Text(
                                                                      "Place(Interview",
                                                                      style: TextStyling
                                                                          .secondaryLabels,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            90),
                                                                    child: Text(
                                                                      "venue/city)",
                                                                      style: TextStyling
                                                                          .secondaryLabels,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  top: 20),
                                                          child: Row(
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  height: 55,
                                                                  width: 100,
                                                                  child:
                                                                      TextFormField(
                                                                    validator:
                                                                        (val) {
                                                                      if (val!
                                                                          .isEmpty) {
                                                                        return "Enter Date";
                                                                      }
                                                                      return null;
                                                                    },
                                                                    onSaved:
                                                                        (val) {
                                                                      Global.dt =
                                                                          val ??
                                                                              "";
                                                                    },
                                                                    controller:
                                                                        dtController,
                                                                    decoration: InputDecoration(
                                                                        border:
                                                                            OutlineInputBorder(),
                                                                        hintText:
                                                                            "DD/MM/YYYY",
                                                                        hintStyle: TextStyle(
                                                                            fontSize:
                                                                                16,
                                                                            height:
                                                                                1,
                                                                            color:
                                                                                secondaryGrey)),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 100,
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  height: 55,
                                                                  width: 100,
                                                                  child:
                                                                      TextFormField(
                                                                    validator:
                                                                        (val) {
                                                                      if (val!
                                                                          .isEmpty) {
                                                                        return "Enter Place";
                                                                      }
                                                                      return null;
                                                                    },
                                                                    onSaved:
                                                                        (val) {
                                                                      Global.place =
                                                                          val ??
                                                                              "";
                                                                    },
                                                                    controller:
                                                                        placeController,
                                                                    decoration: InputDecoration(
                                                                        border:
                                                                            OutlineInputBorder(),
                                                                        hintText:
                                                                            "Eg. Surat",
                                                                        hintStyle: TextStyle(
                                                                            fontSize:
                                                                                16,
                                                                            height:
                                                                                1,
                                                                            color:
                                                                                secondaryGrey)),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 30),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              OutlinedButton(
                                                                onPressed: () {
                                                                  if (declarationKey
                                                                      .currentState!
                                                                      .validate()) {
                                                                    declarationKey
                                                                        .currentState!
                                                                        .reset();

                                                                    disController
                                                                        .clear();
                                                                    dtController
                                                                        .clear();
                                                                    placeController
                                                                        .clear();
                                                                  }
                                                                },
                                                                style: OutlinedButton
                                                                    .styleFrom(
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          40,
                                                                      vertical:
                                                                          15),
                                                                  foregroundColor:
                                                                      primaryBlueColor,
                                                                ),
                                                                child: Text(
                                                                  "Clear",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          17),
                                                                ),
                                                              ),
                                                              ElevatedButton(
                                                                onPressed: () {
                                                                  if (declarationKey
                                                                      .currentState!
                                                                      .validate()) {
                                                                    declarationKey
                                                                        .currentState!
                                                                        .save();

                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        behavior:
                                                                            SnackBarBehavior.floating,
                                                                        backgroundColor: Colors
                                                                            .green
                                                                            .shade500,
                                                                        action:
                                                                            SnackBarAction(
                                                                          label:
                                                                              "Next",
                                                                          onPressed:
                                                                              () {
                                                                            setState(() {
                                                                              Navigator.of(context).pushNamedAndRemoveUntil("homepage", (route) => false);
                                                                            });
                                                                          },
                                                                          textColor:
                                                                              primaryWhite,
                                                                        ),
                                                                        content:
                                                                            Text(
                                                                          "Education information Saved SuccessFully!!!",
                                                                        ),
                                                                      ),
                                                                    );

                                                                    disController
                                                                        .clear();
                                                                    dtController
                                                                        .clear();
                                                                    placeController
                                                                        .clear();

                                                                    Resume
                                                                        resume =
                                                                        Resume(
                                                                      roles: Global
                                                                          .roles,
                                                                      DOB: Global
                                                                          .DOB,
                                                                      project_title:
                                                                          Global
                                                                              .project_title,
                                                                      exit: Global
                                                                          .exit,
                                                                      join: Global
                                                                          .join,
                                                                      languages:
                                                                          Global
                                                                              .languages,
                                                                      gender: Global
                                                                          .gender,
                                                                      nationality:
                                                                          Global
                                                                              .nationality,
                                                                      name: Global
                                                                          .name,
                                                                      email: Global
                                                                          .email,
                                                                      contact:
                                                                          Global
                                                                              .contact,
                                                                      address:
                                                                          Global
                                                                              .address,
                                                                      profileImageFile:
                                                                          Global
                                                                              .profileImageFile,
                                                                      reference:
                                                                          Global
                                                                              .reference,
                                                                      designation:
                                                                          Global
                                                                              .designation,
                                                                      institute:
                                                                          Global
                                                                              .institute,
                                                                      course: Global
                                                                          .course,
                                                                      school1:
                                                                          Global
                                                                              .school1,
                                                                      school2:
                                                                          Global
                                                                              .school2,
                                                                      year: Global
                                                                          .year,
                                                                      company_name:
                                                                          Global
                                                                              .company_name,
                                                                      school: Global
                                                                          .school,
                                                                      role: Global
                                                                          .role,
                                                                      tech: Global
                                                                          .tech,
                                                                      description:
                                                                          Global
                                                                              .description,
                                                                      carrier_obj:
                                                                          Global
                                                                              .carrier_obj,
                                                                      current_designation:
                                                                          Global
                                                                              .current_designation,
                                                                      dis: Global
                                                                          .dis,
                                                                      dt: Global
                                                                          .dt,
                                                                      place: Global
                                                                          .place,
                                                                      ResumeName:
                                                                          Global
                                                                              .ResumeName,
                                                                    );

                                                                    Global
                                                                        .allResume
                                                                        .add(
                                                                            resume);

                                                                    Navigator.of(context).pushNamedAndRemoveUntil(
                                                                        'homepage',
                                                                        (route) =>
                                                                            false);
                                                                  }
                                                                },
                                                                style: OutlinedButton
                                                                    .styleFrom(
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          40,
                                                                      vertical:
                                                                          15),
                                                                  foregroundColor:
                                                                      primaryWhite,
                                                                  backgroundColor:
                                                                      primaryBlueColor,
                                                                ),
                                                                child: Text(
                                                                  "Save",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          17),
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
                                          ],
                                        ),
                                      )
                                    : Row(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                12,
                                            width: 405,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20),
                                                  child: Text(
                                                    "Declaration",
                                                    style: TextStyling.heading,
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      on = !on;
                                                    });
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 100, top: 20),
                                                    child: Switch(
                                                        value: on,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            on = val;
                                                          });
                                                        }),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                              ],
                            ),
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
            title: "Declaration",
            child: Container(),
          ),
        ],
      ),
    );
  }
}
