import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class SpellingFlipCardFront extends StatelessWidget {
  const SpellingFlipCardFront({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          globals.spellingRulesIconPath[index],
          width: 170,
        ),
        Text(
          globals.spellingRulesTitle[index],
          textAlign: TextAlign.center,
          style: TextStyle(
            color: globals.spellingRulesColor[index],
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
