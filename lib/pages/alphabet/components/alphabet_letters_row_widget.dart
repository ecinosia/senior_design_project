// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/cupertino.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;
import '../../../components/sized_box_w12.dart';
import 'alphabet_front_letter_text_widget.dart';

class AlphabetLettersRowWidget extends StatelessWidget {
  const AlphabetLettersRowWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AlphabetFrontLetterTextWidget(
          index: index,
          text: globals.uppercaseList[index],
          color: globals.primary,
        ),
        const SizedBoxW12(),
        AlphabetFrontLetterTextWidget(
          index: index,
          text: globals.lowercaseList[index],
          color: globals.secondary,
        ),
      ],
    );
  }
}
