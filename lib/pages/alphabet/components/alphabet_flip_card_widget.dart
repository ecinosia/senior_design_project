import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:senior_design_project/pages/alphabet/components/alphabet_flip_card_back_widget.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;
import 'alphabet_front_card_widget.dart';

class AlphabetFlipCardWidget extends StatelessWidget {
  const AlphabetFlipCardWidget({
    super.key,
    required this.baseIndex,
    required this.index,
  });

  final int baseIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      alignment: globals.alignCenter,
      fill: globals.fillBack,
      side: globals.cardSideFront,
      flipOnTouch: true,
      direction: globals.flipDirectionHorizontal,
      front: AlphabetFrontCardWidget(
        index: index,
      ),
      back: AlphabetFlipCardBackWidget(
        baseIndex: baseIndex,
      ),
    );
  }
}
