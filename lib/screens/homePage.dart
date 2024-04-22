import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skillsparkresume/utils/custom_widget.dart';
import 'package:skillsparkresume/utils/global.dart';
import 'package:skillsparkresume/utils/text_style.dart';
import 'package:skillsparkresume/utils/all_colors.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool isClick = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomWidget.getAppBar(
                context: context,
                title: "Resume Builder",
                child: Text(
                  "RESUME",
                  style: TextStyling.subtitle,
                )),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 200,
                    color: primaryBlueColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isClick = true;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 73,
                          width: MediaQuery.of(context).size.width / 2.28,
                          child: Text(
                            "My Resumes",
                            style: TextStyle(
                              color: (isClick == true)
                                  ? primaryWhite
                                  : primaryBlueColor,
                              fontSize: 25,
                            ),
                          ),
                          decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  offset: Offset(3, 3))
                            ],
                            borderRadius: BorderRadius.circular(25),
                            color: (isClick == true)
                                ? primaryBlueColor
                                : primaryWhite,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isClick = false;

                            showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Resume Name"),
                                    content: Expanded(
                                      child: TextField(
                                        onChanged: (val) {
                                          Global.ResumeName = val;
                                        },
                                        decoration: InputDecoration(
                                          hintText: "Enter Resume Name",
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    actions: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          Navigator.of(context).pop('homepage');
                                        },
                                        child: Icon(Icons.close),
                                        mini: true,
                                        elevation: 3,
                                      ),
                                      FloatingActionButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed('resume_workspace');
                                        },
                                        child: Icon(Icons.done),
                                        mini: true,
                                        elevation: 3,
                                      ),
                                    ],
                                  );
                                });
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 15),
                          height: 73,
                          width: MediaQuery.of(context).size.width / 2.28,
                          child: Text(
                            "Creat New",
                            style: TextStyle(
                              color: (isClick == false)
                                  ? primaryWhite
                                  : primaryBlueColor,
                              fontSize: 25,
                            ),
                          ),
                          decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                  offset: Offset(3, 3))
                            ],
                            borderRadius: BorderRadius.circular(25),
                            color: (isClick == false)
                                ? primaryBlueColor
                                : primaryWhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                (isClick == true)
                    ? (Global.allResume.isEmpty)
                        ? Column(
                            children: [
                              SizedBox(
                                height: 100,
                              ),
                              Image.asset(
                                "assets/icons/open-cardboard-box.png",
                                height: 60,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "No Resume + Create new resume.",
                                style: TextStyling.secondaryLabels,
                              ),
                            ],
                          )
                        : Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                ...Global.allResume.map(
                                  (e) => GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamed('pdf_viewer');
                                    },
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20, left: 20, right: 20),
                                          child: Container(
                                            height: 100,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                gradient: LinearGradient(
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                    colors: [
                                                      primaryBlueColor
                                                          .withOpacity(0.18),
                                                      primaryBlueColor
                                                    ])),
                                            padding: EdgeInsets.only(
                                              right: 18,
                                            ),
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              e.ResumeName,
                                              style: TextStyling.subtitle,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
