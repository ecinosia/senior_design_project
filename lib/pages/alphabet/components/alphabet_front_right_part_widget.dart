import 'package:flutter/material.dart';
import 'package:senior_design_project/pages/alphabet/components/alphabet_audio_widget.dart';
import 'package:senior_design_project/pages/alphabet/components/alphabet_order_widget.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class AlphabetFrontRightPartWidget extends StatelessWidget {
  const AlphabetFrontRightPartWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: globals.mainAxisAlignment_center,
      children: [
        AlphabetOrderWidget(index: index),
        AlphabetAudioWidget(
          index: index,
        ),
      ],
    );
  }
}
