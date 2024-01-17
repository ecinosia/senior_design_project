import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class ReadingComprehensionQuestionWidget extends StatelessWidget {
  const ReadingComprehensionQuestionWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        globals.readingComprehensionQuestion[index],
        textAlign: TextAlign.center,
        style: TextStyle(
          color: globals.black,
          fontWeight: FontWeight.w500,
          fontSize: 25,
        ),
      ),
    );
  }
}
