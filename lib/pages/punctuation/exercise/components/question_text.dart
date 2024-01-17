import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class QuestionText extends StatelessWidget {
  const QuestionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        globals.punctuationExerciseQuestion,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: globals.black,
          fontSize: globals.fs26,
          fontWeight: globals.fw300,
        ),
      ),
    );
  }
}
