import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'spelling_flip_card_back.dart';
import 'spelling_flip_card_front.dart';

class SpellingFlipCard extends StatelessWidget {
  const SpellingFlipCard({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return FlipCard(
        alignment: Alignment.center,
        fill: Fill.fillBack,
        side: CardSide.FRONT,
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: SpellingFlipCardFront(index: index),
        back: SpellingFlipCardBack(index: index));
  }
}
