import 'package:flutter/material.dart';
import 'package:skillsparkresume/screens/Achievement.dart';
import 'package:skillsparkresume/screens/declaration.dart';
import 'package:skillsparkresume/screens/education.dart';
import 'package:skillsparkresume/screens/interestPage.dart';
import 'package:skillsparkresume/screens/personal_details.dart';
import 'package:skillsparkresume/screens/references.dart';
import 'package:skillsparkresume/screens/technical_skill.dart';
import 'screens/resume_workspace.dart';
import 'screens/homePage.dart';
import 'package:skillsparkresume/screens/splashScreen.dart';
import 'package:skillsparkresume/screens/contact_info.dart';
import 'package:skillsparkresume/screens/career_obj.dart';
import 'package:skillsparkresume/screens/experience_info.dart';
import 'package:skillsparkresume/screens/projects.dart';
import 'package:skillsparkresume/screens/technical_skill.dart';
import 'package:skillsparkresume/screens/pdf_Viewer.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'homepage': (context) => homepage(),
        'resume_workspace': (context) => resume_workspace(),
        '/': (context) => splashScreen(),
        'contact_info': (context) => contactInfo(),
        'references': (context) => references(),
        'education': (context) => education(),
        'career_obj': (context) => career_obj_page(),
        'experience_info': (context) => experience_info(),
        'personal_details': (context) => personal_info(),
        'projects_info': (context) => project_page(),
        'tech_skills': (context) => technical_skills(),
        'achieve_info': (context) => Achievement_page(),
        'interest_hobbies': (context) => interestPage(),
        'declaration_info': (context) => declaration(),
        'pdf_viewer': (context) => pdf_viewer(),
      },
    ),
  );
}
