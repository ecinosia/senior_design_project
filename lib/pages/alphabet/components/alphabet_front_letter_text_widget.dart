// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/cupertino.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class AlphabetFrontLetterTextWidget extends StatelessWidget {
  const AlphabetFrontLetterTextWidget({
    super.key,
    required this.index,
    required this.text,
    required this.color,
  });

  final int index;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: globals.letterForLearners,
        color: color,
        fontSize: globals.fs90,
        fontWeight: globals.fwBold,
      ),
    );
  }
}
