import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class SpellingFlipCardBack extends StatelessWidget {
  const SpellingFlipCardBack({
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
          "Açıklama:",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: globals.spellingRulesColor[index],
            fontSize: 35,
          ),
        ),
        Text(
          globals.spellingRulesDesc[index],
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "Örneğin;",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: globals.spellingRulesColor[index],
            fontSize: 35,
          ),
        ),
        Text(
          globals.spellingRulesExample[index],
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
