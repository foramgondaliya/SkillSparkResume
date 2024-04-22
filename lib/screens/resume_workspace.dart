import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skillsparkresume/utils/all_colors.dart';
import 'package:skillsparkresume/utils/custom_widget.dart';
import 'package:skillsparkresume/utils/global.dart';
import 'package:skillsparkresume/utils/text_style.dart';

class resume_workspace extends StatefulWidget {
  const resume_workspace({super.key});

  @override
  State<resume_workspace> createState() => _resume_workspaceState();
}

class _resume_workspaceState extends State<resume_workspace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomWidget.getAppBar(
                context: context,
                title: "Builder Option",
                child: Text(
                  "Resume Workspace",
                  style: TextStyling.subtitle,
                )),
            Column(
              children: [
                ...Global.allWorkSpaceInfo.map(
                  (e) => Padding(
                    padding:
                        const EdgeInsets.only(left: 13, right: 13, top: 20),
                    child: Row(
                      children: [
                        ...e['data'].map(
                          (Map<String, dynamic> e) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(e['navigation']);
                              },
                              child: Container(
                                margin: const EdgeInsets.only(
                                  right: 8,
                                  left: 8,
                                ),
                                height: 170,
                                width: 124,
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(5, 5),
                                      blurRadius: 7,
                                      spreadRadius: 1,
                                    )
                                  ],
                                  color: primaryBlueColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          e['icon'],
                                          size: 45,
                                          color: primaryWhite,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "${e['label']}",
                                          style: TextStyle(
                                            color: primaryWhite,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
