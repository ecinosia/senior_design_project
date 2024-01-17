import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class FeedbackWidget extends StatelessWidget {
  const FeedbackWidget({
    super.key,
    required this.feedback,
  });

  final String feedback;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: feedback == "" ? false : true,
      child: Text(
        feedback,
        style: TextStyle(
            fontSize: 27, color: globals.black, fontWeight: FontWeight.w600),
      ),
    );
  }
}
