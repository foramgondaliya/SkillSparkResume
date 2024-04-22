import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skillsparkresume/utils/all_colors.dart';
import 'package:skillsparkresume/utils/custom_widget.dart';
import 'package:skillsparkresume/utils/global.dart';

class interestPage extends StatefulWidget {
  const interestPage({super.key});

  @override
  State<interestPage> createState() => _interestPageState();
}

class _interestPageState extends State<interestPage> {
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
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, bottom: 40, top: 20),
                        color: Colors.white,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                "Enter your Hobbies",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              ...Global.allHobbies.map(
                                (e) => Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        controller: e,
                                        decoration: InputDecoration(
                                            hintText:
                                                "C Programming, Web Technical",
                                            hintStyle: TextStyle(
                                                color: secondaryGrey,
                                                fontSize: 20)),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          Global.allHobbies.remove(e);
                                        });
                                      },
                                      icon: Icon(
                                        Icons.delete,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              SizedBox(
                                height: 60,
                                width: double.infinity,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      Global.allHobbies
                                          .add(TextEditingController());
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 40,
                                    color: secondaryGrey,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    OutlinedButton(
                                      onPressed: () {
                                        setState(() {
                                          Global.allHobbies.forEach((element) {
                                            element.clear();
                                          });
                                          setState(() {
                                            Global.allHobbies = [
                                              TextEditingController(),
                                              TextEditingController(),
                                            ];
                                          });
                                        });
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
                                        setState(() {
                                          Global.allHobbies.forEach((element) {
                                            Global.hobbyData.add(element.text);
                                          });
                                          Global.allHobbies.forEach((element) {
                                            element.clear();
                                          });
                                          setState(() {
                                            Global.allHobbies = [
                                              TextEditingController(),
                                              TextEditingController(),
                                            ];
                                          });
                                        });
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
                                              "Technical skills information Saved SuccessFully!!!",
                                            ),
                                          ),
                                        );
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
                )
              ],
            ),
          ),
          CustomWidget.getAppBar(
            context: context,
            title: "Interest/Hobbies",
            child: Container(),
          ),
        ],
      ),
    );
  }
}
