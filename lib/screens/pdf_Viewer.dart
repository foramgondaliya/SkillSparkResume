import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:skillsparkresume/model/resume.dart';
import 'package:skillsparkresume/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class pdf_viewer extends StatefulWidget {
  const pdf_viewer({super.key});

  @override
  State<pdf_viewer> createState() => _pdf_viewerState();
}

class _pdf_viewerState extends State<pdf_viewer> {
  final pw.Document pdf = pw.Document();
  @override
  void initState() {
    super.initState();

    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Column(
            children: [
              pw.Expanded(
                flex: 2,
                child: pw.Container(
                  //color: Colors.red,
                  child: pw.Padding(
                    padding:
                        const pw.EdgeInsets.only(right: 16, left: 16, top: 22),
                    child: pw.Column(
                      children: [
                        pw.Row(
                          children: [
                            pw.Text(
                              Global.ResumeName,
                              style: pw.TextStyle(
                                  fontSize: 33, fontWeight: pw.FontWeight.bold),
                            ),
                          ],
                        ),
                        pw.Row(
                          children: [
                            pw.Text(
                              Global.designation,
                              style: pw.TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        pw.Divider(
                          thickness: 2,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              pw.Expanded(
                flex: 2,
                child: pw.Container(
                  //color: Colors.amber,
                  child: pw.Row(
                    children: [
                      pw.Expanded(
                        flex: 2,
                        child: pw.Container(
                          child: pw.Container(
                            height: 150,
                            width: 150,
                            decoration: pw.BoxDecoration(
                              shape: pw.BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      pw.Expanded(
                          flex: 3,
                          child: pw.Container(
                            //color: Colors.amber,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 25),
                              child: pw.Column(
                                children: [
                                  pw.Row(
                                    children: [
                                      pw.Text(
                                        "CARRIER DETAIL",
                                        style: pw.TextStyle(
                                          fontSize: 20,
                                          fontWeight: pw.FontWeight.bold,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  pw.Padding(
                                    padding: const pw.EdgeInsets.only(
                                      left: 4,
                                    ),
                                    child: pw.Column(
                                      children: [
                                        pw.Column(
                                          children: [
                                            pw.Text(
                                              Global.carrier_obj,
                                              style: pw.TextStyle(fontSize: 13),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              pw.Expanded(
                flex: 13,
                child: pw.Container(
                  //color: Colors.blue,
                  child: pw.Row(
                    children: [
                      pw.Expanded(
                        flex: 3,
                        child: pw.Container(
                          //color: Colors.red,
                          child: pw.Padding(
                            padding:
                                const pw.EdgeInsets.only(left: 16, right: 2),
                            child: pw.Column(
                              children: [
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "CONTACT",
                                      style: pw.TextStyle(
                                        fontSize: 20,
                                        fontWeight: pw.FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    // pw.Icon(
                                    //   pw.Icons.phone,
                                    //   size: 18,
                                    // ),
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 5),
                                      child: pw.Text(
                                        Global.contact,
                                        style: pw.TextStyle(fontSize: 12.3),
                                      ),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    // pw.Icon(
                                    //   Icons.email,
                                    //   size: 18,
                                    // ),
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 5),
                                      child: pw.Text(
                                        Global.email,
                                        style: pw.TextStyle(fontSize: 12.3),
                                      ),
                                    )
                                  ],
                                ),
                                // Icon(Icons.location_on),
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 30),
                                  child: pw.Column(
                                    children: [
                                      pw.Column(
                                        children: [
                                          pw.Text(
                                            Global.address,
                                            style: pw.TextStyle(fontSize: 12.3),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                pw.Divider(
                                  color: PdfColors.black,
                                  thickness: 2,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "DETAILS",
                                      style: pw.TextStyle(
                                        fontSize: 20,
                                        fontWeight: pw.FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "DOB",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.DOB,
                                      style: pw.TextStyle(fontSize: 12.3),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Marital Status",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.gender,
                                      style: pw.TextStyle(fontSize: 12.3),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Languages Known",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  mainAxisAlignment:
                                      pw.MainAxisAlignment.spaceBetween,
                                  children: [
                                    ...Global.languages.map(
                                      (e) => pw.Text(
                                        e,
                                        style: pw.TextStyle(fontSize: 12.3),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Nationality",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.nationality,
                                      style: pw.TextStyle(fontSize: 12.3),
                                    ),
                                  ],
                                ),
                                pw.Divider(
                                  color: PdfColors.black,
                                  thickness: 2,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "EDUCATION",
                                      style: pw.TextStyle(
                                        fontSize: 20,
                                        fontWeight: pw.FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Course/Degree",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.course,
                                      style: pw.TextStyle(fontSize: 12.3),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "School/College/Institute",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.school1,
                                      style: pw.TextStyle(fontSize: 12.3),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "School/College/Institute",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.school2,
                                      style: pw.TextStyle(fontSize: 12.3),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Year Of Pass",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.year,
                                      style: pw.TextStyle(fontSize: 12.3),
                                    ),
                                  ],
                                ),
                                pw.Divider(
                                  color: PdfColors.black,
                                  thickness: 2,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "HOBBIES",
                                      style: pw.TextStyle(
                                        fontSize: 20,
                                        fontWeight: pw.FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    ...Global.hobbyData.map(
                                      (e) => pw.Text(
                                        e,
                                        style: pw.TextStyle(fontSize: 12.3),
                                      ),
                                    )
                                  ],
                                ),
                                pw.Divider(
                                  color: PdfColors.black,
                                  thickness: 2,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "TECH SKILLS ",
                                      style: pw.TextStyle(
                                        fontSize: 20,
                                        fontWeight: pw.FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),

                                pw.Row(
                                  children: [
                                    ...Global.skillData.map(
                                      (e) => pw.Text(
                                        e,
                                        style: pw.TextStyle(fontSize: 12.3),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      pw.Expanded(
                        flex: 4,
                        child: pw.Container(
                          // color: Colors.blue,
                          child: pw.Padding(
                            padding:
                                const pw.EdgeInsets.only(left: 16, right: 2),
                            child: pw.Column(
                              children: [
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "EXPERIENCE",
                                      style: pw.TextStyle(
                                        fontSize: 20,
                                        fontWeight: pw.FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Company Name",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.company_name,
                                      style: pw.TextStyle(fontSize: 12.3),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "School/College/Institute",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.school,
                                      style: pw.TextStyle(fontSize: 12.3),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Roles",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Column(
                                  children: [
                                    pw.Column(
                                      children: [
                                        pw.Text(
                                          Global.roles,
                                          style: pw.TextStyle(fontSize: 12.3),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Employee Status",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Previous Employee",
                                      style: pw.TextStyle(
                                          fontSize: 12,
                                          fontWeight: pw.FontWeight.bold),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Date Joined",
                                      style: pw.TextStyle(fontSize: 12.3),
                                    ),
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 20),
                                      child: pw.Text(
                                        Global.join,
                                        style: pw.TextStyle(fontSize: 12.3),
                                      ),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Date Exit",
                                      style: pw.TextStyle(fontSize: 12.3),
                                    ),
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 37),
                                      child: pw.Text(
                                        Global.exit,
                                        style: pw.TextStyle(fontSize: 12.3),
                                      ),
                                    )
                                  ],
                                ),
                                pw.Divider(
                                  color: PdfColors.black,
                                  thickness: 2, //
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "PROJECTS",
                                      style: pw.TextStyle(
                                        fontSize: 20,
                                        fontWeight: pw.FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Project Title",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.project_title,
                                      style: pw.TextStyle(fontSize: 12.3),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Technologies",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  mainAxisAlignment:
                                      pw.MainAxisAlignment.spaceBetween,
                                  children: [
                                    ...Global.techno.map(
                                      (e) => pw.Text(
                                        e,
                                        style: pw.TextStyle(fontSize: 12.3),
                                      ),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Roles",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.role,
                                      style: pw.TextStyle(fontSize: 12.3),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Technologies",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.tech,
                                      style: pw.TextStyle(fontSize: 12.3),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Project Description",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      Global.description,
                                      style: pw.TextStyle(fontSize: 12.3),
                                    ),
                                  ],
                                ),
                                pw.Divider(
                                  color: PdfColors.black,
                                  thickness: 2,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "DECLARATION",
                                      style: pw.TextStyle(
                                        fontSize: 20,
                                        fontWeight: pw.FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Description",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    )
                                  ],
                                ),
                                pw.Column(
                                  children: [
                                    pw.Column(
                                      children: [
                                        pw.Text(
                                          Global.dis,
                                          style: pw.TextStyle(fontSize: 12.3),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Date",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    ),
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 37),
                                      child: pw.Text(
                                        Global.dt,
                                        style: pw.TextStyle(
                                            fontSize: 14,
                                            fontWeight: pw.FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Place",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold),
                                    ),
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 30),
                                      child: pw.Text(
                                        Global.place,
                                        style: pw.TextStyle(
                                            fontSize: 14,
                                            fontWeight: pw.FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Divider(
                                  color: PdfColors.black,
                                  thickness: 2,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "ACHIEVEMENT",
                                      style: pw.TextStyle(
                                        fontSize: 20,
                                        fontWeight: pw.FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    ...Global.achieveData.map(
                                      (e) => pw.Text(
                                        e,
                                        style: pw.TextStyle(fontSize: 12.3),
                                      ),
                                    )
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
              ),
            ],
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              //color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(right: 16, left: 16, top: 22),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          Global.ResumeName,
                          style: TextStyle(
                              fontSize: 33, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          Global.designation,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 2,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              //color: Colors.amber,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Container(
                        height: 150,
                        width: 150,
                        //child: Image.file(Resume.profileImageFile),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        //color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "CARRIER DETAIL",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 4,
                                ),
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          Global.carrier_obj,
                                          style: TextStyle(fontSize: 13),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 13,
            child: Container(
              //color: Colors.blue,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      //color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 2),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "CONTACT",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    Global.contact,
                                    style: TextStyle(fontSize: 12.3),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    Global.email,
                                    style: TextStyle(fontSize: 12.3),
                                  ),
                                )
                              ],
                            ),
                            // Icon(Icons.location_on),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        Global.address,
                                        style: TextStyle(fontSize: 12.3),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "DETAILS",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "DOB",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.DOB,
                                  style: TextStyle(fontSize: 12.3),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Marital Status",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.gender,
                                  style: TextStyle(fontSize: 12.3),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Languages Known",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ...Global.languages.map(
                                  (e) => Text(
                                    e,
                                    style: TextStyle(fontSize: 12.3),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Nationality",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.nationality,
                                  style: TextStyle(fontSize: 12.3),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "EDUCATION",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Course/Degree",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.course,
                                  style: TextStyle(fontSize: 12.3),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "School/College/Institute",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.school1,
                                  style: TextStyle(fontSize: 12.3),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "School/College/Institute",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.school2,
                                  style: TextStyle(fontSize: 12.3),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Year Of Pass",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.year,
                                  style: TextStyle(fontSize: 12.3),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "HOBBIES",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                ...Global.hobbyData.map(
                                  (e) => Text(
                                    e,
                                    style: TextStyle(fontSize: 12.3),
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "TECH SKILLS ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                ...Global.skillData.map(
                                  (e) => Text(
                                    e,
                                    style: TextStyle(fontSize: 12.3),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      // color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 2),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "EXPERIENCE",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Company Name",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.company_name,
                                  style: TextStyle(fontSize: 12.3),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "School/College/Institute",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.school,
                                  style: TextStyle(fontSize: 12.3),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Roles",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      Global.roles,
                                      style: TextStyle(fontSize: 12.3),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Employee Status",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Previous Employee",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Date Joined",
                                  style: TextStyle(fontSize: 12.3),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    Global.join,
                                    style: TextStyle(fontSize: 12.3),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Date Exit",
                                  style: TextStyle(fontSize: 12.3),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 37),
                                  child: Text(
                                    Global.exit,
                                    style: TextStyle(fontSize: 12.3),
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "PROJECTS",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Project Title",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.project_title,
                                  style: TextStyle(fontSize: 12.3),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Technologies",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ...Global.techno.map(
                                  (e) => Text(
                                    e,
                                    style: TextStyle(fontSize: 12.3),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Roles",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.role,
                                  style: TextStyle(fontSize: 12.3),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Technologies",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.tech,
                                  style: TextStyle(fontSize: 12.3),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Project Description",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  Global.description,
                                  style: TextStyle(fontSize: 12.3),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "DECLARATION",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Description",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      Global.dis,
                                      style: TextStyle(fontSize: 12.3),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Date",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 37),
                                  child: Text(
                                    Global.dt,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Place",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    Global.place,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "ACHIEVEMENT",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                ...Global.achieveData.map(
                                  (e) => Text(
                                    e,
                                    style: TextStyle(fontSize: 12.3),
                                  ),
                                )
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
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final Directory? directory = await getExternalStorageDirectory();

          final File file = File("${directory!.path}/${Global.ResumeName}.pdf");
          await file.writeAsBytes(await pdf.save());
        },
        child: Icon(Icons.download),
      ),
    );
  }
}
