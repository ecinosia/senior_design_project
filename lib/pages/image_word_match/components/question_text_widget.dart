import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class QuestionTextWidget extends StatelessWidget {
  const QuestionTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        "Yukarıdaki resimde ne var?",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: globals.black,
          fontSize: globals.fs32,
        ),
      ),
    );
  }
}
