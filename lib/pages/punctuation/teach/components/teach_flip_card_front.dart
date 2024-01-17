import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class TeachFlipCardFront extends StatelessWidget {
  const TeachFlipCardFront({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          globals.puncNames[index],
          textAlign: TextAlign.center,
          style: TextStyle(
              color: globals.puncNameColor[index],
              fontSize: globals.fs45,
              fontWeight: globals.fwBold),
        ),
        Image.asset(
          globals.puncImages[index],
          width: 180,
        ),
      ],
    );
  }
}
