import 'package:flutter/material.dart';
import 'package:senior_design_project/pages/alphabet/components/alphabet_letters_row_widget.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;
import 'alphabet_front_right_part_widget.dart';

class AlphabetFrontCardWidget extends StatelessWidget {
  const AlphabetFrontCardWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: globals.mainAxisAlignment_spaceEvenly,
      children: [
        AlphabetLettersRowWidget(
          index: index,
        ),
        AlphabetFrontRightPartWidget(
          index: index,
        ),
      ],
    );
  }
}
