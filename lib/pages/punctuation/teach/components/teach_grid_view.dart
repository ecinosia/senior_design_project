import 'package:flutter/material.dart';
import 'package:senior_design_project/pages/punctuation/teach/components/teach_card.dart';

class TeachGridView extends StatelessWidget {
  const TeachGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, childAspectRatio: 1),
      padding: const EdgeInsets.all(8),
      itemCount: 10,
      itemBuilder: (context, index) {
        return TeachCard(index: index);
      },
    );
  }
}
