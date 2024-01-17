import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class TeachFlipCardBack extends StatelessWidget {
  const TeachFlipCardBack({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          globals.whatIsUsedFor,
          textAlign: globals.taCenter,
          style: TextStyle(
            color: globals.puncNameColor[index],
            fontSize: globals.fs35,
          ),
        ),
        Text(
          globals.puncDesc[index],
          textAlign: globals.taCenter,
          style: const TextStyle(
            fontSize: globals.fs22,
            fontWeight: globals.fw500,
          ),
        ),
        Text(
          globals.forExample,
          textAlign: globals.taCenter,
          style: TextStyle(
            color: globals.puncNameColor[index],
            fontSize: globals.fs35,
          ),
        ),
        Text(
          globals.puncExample[index],
          textAlign: globals.taCenter,
          style: const TextStyle(
            fontSize: globals.fs22,
            fontWeight: globals.fw500,
          ),
        ),
      ],
    );
  }
}
