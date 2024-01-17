// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    super.key,
    required this.title,
  });

  String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 40,
      backgroundColor: globals.primary,
      centerTitle: true,
      elevation: 12,
      shadowColor: globals.black.withOpacity(0.7),
      foregroundColor: globals.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: globals.white,
          fontSize: 25,
        ),
      ),
    );
  }
}
