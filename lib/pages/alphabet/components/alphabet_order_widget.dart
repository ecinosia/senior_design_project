// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/cupertino.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class AlphabetOrderWidget extends StatelessWidget {
  const AlphabetOrderWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Alfabenin ${index + 1} . harfi",
      style: TextStyle(
        color: globals.black,
        fontSize: globals.fs20,
        fontWeight: globals.fw400,
      ),
    );
  }
}
