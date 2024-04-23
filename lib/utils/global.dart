import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skillsparkresume/model/resume.dart';

class Global {
  static List<Map<String, dynamic>> allWorkSpaceInfo = <Map<String, dynamic>>[
    {
      'data': [
        {
          'id': 1,
          'label': 'Contact info',
          'navigation': 'contact_info',
          'icon': Icons.quick_contacts_mail_outlined,
        },
        {
          'id': 2,
          'label': 'Carrier Objective',
          'navigation': 'career_obj',
          'icon': Icons.shopping_bag_outlined,
        },
        {
          'id': 3,
          'label': 'Details',
          'navigation': 'personal_details',
          'icon': Icons.account_circle_outlined,
        }
      ]
    },
    {
      'data': [
        {
          'id': 1,
          'label': 'Education',
          'navigation': 'education',
          'icon': Icons.cast_for_education_outlined,
        },
        {
          'id': 2,
          'label': 'Experience',
          'navigation': 'experience_info',
          'icon': Icons.record_voice_over,
        },
        {
          'id': 3,
          'label': 'Technical Skills',
          'navigation': 'tech_skills',
          'icon': Icons.military_tech,
        }
      ]
    },
    {
      'data': [
        {
          'id': 1,
          'label': 'Interest/Hobbies',
          'navigation': 'interest_hobbies',
          'icon': Icons.menu_book_outlined,
        },
        {
          'id': 2,
          'label': 'Projects',
          'navigation': 'projects_info',
          'icon': Icons.task_outlined,
        },
        {
          'id': 3,
          'label': 'Achievements',
          'navigation': 'achieve_info',
          'icon': Icons.add_chart,
        }
      ]
    },
    {
      'data': [
        {
          'id': 1,
          'label': 'References',
          'navigation': 'references',
          'icon': Icons.handshake_outlined,
        },
        {
          'id': 2,
          'label': 'Declaration',
          'navigation': 'declaration_info',
          'icon': Icons.newspaper_outlined,
        },
      ]
    },
  ];
  //technical skill
  static List<TextEditingController> allSkill = [
    TextEditingController(),
    TextEditingController(),
  ];
  static List<String> hobbyData = [];

  //Interest/Hobbies
  static List<TextEditingController> allHobbies = [
    TextEditingController(),
    TextEditingController(),
  ];

  static List<TextEditingController> achievment = [
    TextEditingController(),
    TextEditingController(),
  ];
  static List<String> achieveData = [];

  static List<String> skillData = [];
  static String ResumeName = "";

  static List<Resume> allResume = [];
  //Contact Info Variable

  static String name = "";
  static String email = "";
  static String contact = "";
  static String address = "";
  static File? profileImageFile;

  static Resume? selectedResume;

  //Reference Variables
  static String reference = "";
  static String designation = "";
  static String institute = "";

  //Education Variables
  static String course = "";
  static String school1 = "";
  static String school2 = "";
  static String year = "";

  //Experience Variables
  static String company_name = "";
  static String school = "";
  static String roles = "";
  static String join = "";
  static String exit = "";

  //Personal Details Variables
  static String DOB = "";
  static String nationality = "";
  static String gender = "";
  static List<String> languages = [];

  //Project Variables
  static String project_title = "";
  static String role = "";
  static String tech = "";
  static String description = "";
  static List<String> techno = [];

  //Carrier_obj Variables
  static String carrier_obj = "";
  static String current_designation = "";

  //Declaration Variables
  static String dis = "";
  static String dt = "";
  static String place = "";
}
