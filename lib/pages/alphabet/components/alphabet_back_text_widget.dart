// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/cupertino.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class AlphabetBackTextWidget extends StatelessWidget {
  const AlphabetBackTextWidget({
    super.key,
    required this.baseIndex,
    required this.text,
  });

  final String text;
  final int baseIndex;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: globals.black,
        fontSize: globals.fs25,
        fontWeight: globals.fw500,
      ),
    );
  }
}
