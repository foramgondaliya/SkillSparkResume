import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skillsparkresume/utils/all_colors.dart';
import 'package:skillsparkresume/utils/text_style.dart';

class CustomWidget {
  static Container getAppBar({
    required BuildContext context,
    required String title,
    required Widget child,
  }) {
    return Container(
      height: 168,
      color: primaryBlueColor,
      child: Column(
        children: [
          SizedBox(
            height: 48,
          ),
          Container(
            height: 60,
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyling.title,
            ),
          ),
          Container(
            height: 60,
            alignment: Alignment.center,
            child: child,
          ),
        ],
      ),
    );
  }
}
