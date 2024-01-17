// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/cupertino.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;
import 'package:senior_design_project/pages/alphabet/components/alphabet_back_text_widget.dart';

class AlphabetFlipCardBackWidget extends StatelessWidget {
  const AlphabetFlipCardBackWidget({
    super.key,
    required this.baseIndex,
  });

  final int baseIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AlphabetBackTextWidget(
          baseIndex: baseIndex,
          text: globals.wordsList[baseIndex],
        ),
        AlphabetBackTextWidget(
          baseIndex: baseIndex,
          text: globals.wordsList[baseIndex + 1],
        ),
        AlphabetBackTextWidget(
          baseIndex: baseIndex,
          text: globals.wordsList[baseIndex + 2],
        ),
      ],
    );
  }
}
