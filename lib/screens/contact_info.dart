import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skillsparkresume/utils/all_colors.dart';
import 'package:skillsparkresume/utils/custom_widget.dart';
import 'package:skillsparkresume/utils/global.dart';
import 'package:skillsparkresume/utils/text_style.dart';
import 'package:skillsparkresume/utils/toast_Message.dart';

class contactInfo extends StatefulWidget {
  const contactInfo({super.key});

  @override
  State<contactInfo> createState() => _contactInfoState();
}

class _contactInfoState extends State<contactInfo> {
  ImagePicker imagePicker = ImagePicker();
  XFile? xFile;
  String? pickImagePath;
  bool isContact = true;

  GlobalKey<FormState> contactInfoKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            (isContact)
                ? SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 220,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20, left: 20, bottom: 120),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 50, left: 25, right: 25),
                                height:
                                    MediaQuery.of(context).size.height / 1.53,
                                color: Colors.white,
                                child: Form(
                                  key: contactInfoKey,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 23),
                                        child: Row(
                                          children: [
                                            Expanded(
                                                child: TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter Name";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.name = val ?? "";
                                              },
                                              controller: nameController,
                                              decoration: const InputDecoration(
                                                prefixIcon: Icon(
                                                  Icons.person,
                                                  size: 30,
                                                ),
                                                label: Text("Name"),
                                                border: OutlineInputBorder(),
                                                hintText: "Name",
                                              ),
                                            )),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 23),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter Email";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  Global.email = val ?? "";
                                                },
                                                controller: emailController,
                                                decoration:
                                                    const InputDecoration(
                                                  prefixIcon: Icon(
                                                    Icons.email,
                                                    size: 30,
                                                  ),
                                                  label: Text("Email"),
                                                  border: OutlineInputBorder(),
                                                  hintText: "Email",
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(bottom: 23),
                                        child: Row(
                                          children: [
                                            Expanded(
                                                child: TextFormField(
                                              keyboardType:
                                                  TextInputType.number,
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter Contact";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                Global.contact = val ?? "";
                                              },
                                              controller: contactController,
                                              decoration: InputDecoration(
                                                prefixIcon: Icon(
                                                  Icons.call,
                                                  size: 30,
                                                ),
                                                label: Text("Contact"),
                                                border: OutlineInputBorder(),
                                                hintText: "Contact",
                                              ),
                                            )),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(bottom: 23),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter Address";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  Global.address = val ?? "";
                                                },
                                                controller: addressController,
                                                maxLines: 3,
                                                decoration: InputDecoration(
                                                  prefixIcon: Icon(
                                                    Icons.location_on,
                                                    size: 30,
                                                  ),
                                                  label: Text("Address"),
                                                  border: OutlineInputBorder(),
                                                  hintText: "Current Address",
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          OutlinedButton(
                                            onPressed: () {
                                              if (contactInfoKey.currentState!
                                                  .validate()) {
                                                contactInfoKey.currentState!
                                                    .reset();

                                                nameController.clear();
                                                emailController.clear();
                                                contactController.clear();
                                                addressController.clear();
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 50, vertical: 14),
                                              foregroundColor: primaryBlueColor,
                                            ),
                                            child: Text("Clear"),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              if (contactInfoKey.currentState!
                                                  .validate()) {
                                                contactInfoKey.currentState!
                                                    .save();

                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    behavior: SnackBarBehavior
                                                        .floating,
                                                    backgroundColor:
                                                        Colors.green.shade500,
                                                    action: SnackBarAction(
                                                      label: "Next",
                                                      onPressed: () {
                                                        setState(() {
                                                          isContact = false;
                                                        });
                                                      },
                                                      textColor: primaryWhite,
                                                    ),
                                                    content: Text(
                                                      "Contact information Saved SuccessFully!!!",
                                                    ),
                                                  ),
                                                );

                                                nameController.clear();
                                                emailController.clear();
                                                contactController.clear();
                                                addressController.clear();
                                              }
                                            },
                                            style: OutlinedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 50, vertical: 14),
                                              foregroundColor: primaryWhite,
                                              backgroundColor: primaryBlueColor,
                                            ),
                                            child: Text("Save"),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Column(
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      Container(
                        height: 300,
                        margin: EdgeInsets.only(left: 25, right: 25),
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text(
                                          "Pick Image",
                                        ),
                                        content: Text(
                                          "Choose Image From Gallery or Camera",
                                        ),
                                        actions: [
                                          FloatingActionButton(
                                            mini: true,
                                            onPressed: () async {
                                              xFile =
                                                  await imagePicker.pickImage(
                                                source: ImageSource.camera,
                                              );
                                              setState(() {
                                                if (xFile != null) {
                                                  pickImagePath = xFile!.path;
                                                }
                                              });

                                              Navigator.of(context).pop();
                                            },
                                            elevation: 3,
                                            child: Icon(
                                              Icons.camera_alt,
                                            ),
                                          ),
                                          FloatingActionButton(
                                            mini: true,
                                            onPressed: () async {
                                              xFile =
                                                  await imagePicker.pickImage(
                                                source: ImageSource.gallery,
                                              );
                                              setState(() {
                                                if (xFile != null) {
                                                  pickImagePath = xFile!.path;
                                                }
                                              });

                                              Navigator.of(context).pop();
                                            },
                                            elevation: 3,
                                            child: Icon(
                                              Icons.image,
                                            ),
                                          ),
                                        ],
                                      );
                                    });
                              },
                              child: CircleAvatar(
                                radius: 70,
                                backgroundColor:
                                    primaryBlueColor.withOpacity(0.7),
                                backgroundImage: (pickImagePath != null)
                                    ? FileImage(File(pickImagePath!))
                                    : null,
                                child: (pickImagePath != null)
                                    ? Container()
                                    : Icon(
                                        Icons.add,
                                        color: primaryWhite,
                                        size: 30,
                                      ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 50, vertical: 14),
                                    foregroundColor: primaryBlueColor,
                                  ),
                                  child: Text("Clear"),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    if (pickImagePath != null) {
                                      Global.profileImageFile =
                                          File(pickImagePath!);
                                      toastMessage(
                                          context: context,
                                          message:
                                              "Profile Image Saved Successfully!!!");
                                    }
                                  },
                                  style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 50, vertical: 14),
                                    foregroundColor: primaryWhite,
                                    backgroundColor: primaryBlueColor,
                                  ),
                                  child: Text("Save"),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
            CustomWidget.getAppBar(
              context: context,
              title: "Resume WorkSpace",
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isContact = true;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                          color:
                              primaryWhite.withOpacity((isContact) ? 0.75 : 0),
                          width: 2,
                        )),
                        color: primaryBlueColor,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Contact",
                        style: TextStyling.subtitle,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isContact = false;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                          color:
                              primaryWhite.withOpacity((isContact) ? 0 : 0.75),
                          width: 2,
                        )),
                        color: primaryBlueColor,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Photo",
                        style: TextStyling.subtitle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
