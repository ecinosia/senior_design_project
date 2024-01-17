import 'package:flutter/material.dart';
import 'alphabet_card_widget.dart';

class AlphabetWidget extends StatelessWidget {
  const AlphabetWidget({
    super.key,
    required this.screenSize,
    required this.baseIndex,
    required this.index,
  });

  final Size screenSize;
  final int baseIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: screenSize.width * .9,
        height: 160,
        child: AlphabetCardWidget(
          baseIndex: baseIndex,
          index: index,
        ));
  }
}
