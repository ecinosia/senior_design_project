import 'package:flutter/material.dart';
import 'spelling_flip_card.dart';

class SpellingCardWidget extends StatelessWidget {
  const SpellingCardWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: SpellingFlipCard(index: index),
    );
  }
}
