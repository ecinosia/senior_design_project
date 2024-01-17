import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class QuestionImageWidget extends StatelessWidget {
  const QuestionImageWidget({
    super.key,
    required this.imageIndex,
  });

  final int imageIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: globals.primary,
            width: 4,
            style: BorderStyle.solid,
          ),
        ),
        child: Image.asset(
          globals.matchWordImageList[imageIndex],
        ),
      ),
    );
  }
}
