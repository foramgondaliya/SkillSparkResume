import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:skillsparkresume/utils/all_colors.dart';

toastMessage({
  required BuildContext context,
  required String message,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.green.shade500,
      action: SnackBarAction(
        label: "Next",
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, 'resume_workspace', (route) => false);
        },
        textColor: primaryWhite,
      ),
      content: Text(
        message,
      ),
    ),
  );
}
