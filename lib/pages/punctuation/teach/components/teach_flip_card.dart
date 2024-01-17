import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:senior_design_project/pages/punctuation/teach/components/teach_flip_card_back.dart';
import 'package:senior_design_project/pages/punctuation/teach/components/teach_flip_card_front.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class TeachFlipCard extends StatelessWidget {
  const TeachFlipCard({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      alignment: globals.alignCenter,
      fill: globals.fillBack,
      side: globals.cardSideFront,
      flipOnTouch: true,
      direction: globals.flipDirectionHorizontal,
      front: TeachFlipCardFront(index: index),
      back: TeachFlipCardBack(index: index),
    );
  }
}
