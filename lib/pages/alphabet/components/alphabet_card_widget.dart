import 'package:flutter/material.dart';
import 'alphabet_flip_card_widget.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class AlphabetCardWidget extends StatelessWidget {
  const AlphabetCardWidget({
    super.key,
    required this.baseIndex,
    required this.index,
  });

  final int baseIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: globals.elev8,
      margin: globals.eiall_12,
      shape: globals.roundedRectangleBorder_circular_15,
      child: AlphabetFlipCardWidget(baseIndex: baseIndex, index: index),
    );
  }
}
