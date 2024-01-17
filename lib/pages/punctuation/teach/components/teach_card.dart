import 'package:flutter/material.dart';
import 'package:senior_design_project/pages/punctuation/teach/components/teach_flip_card.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class TeachCard extends StatelessWidget {
  const TeachCard({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: globals.elev8,
      margin: const EdgeInsets.all(12),
      shape: globals.roundedRectangleBorder_circular_12,
      child: SizedBox(
        height: 50,
        child: TeachFlipCard(index: index),
      ),
    );
  }
}
