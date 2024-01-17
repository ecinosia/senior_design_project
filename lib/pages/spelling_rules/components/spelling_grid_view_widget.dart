import 'package:flutter/material.dart';
import 'spelling_card_widget.dart';

class SpellingGridViewWidget extends StatelessWidget {
  const SpellingGridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 1,
      ),
      itemCount: 24,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return SpellingCardWidget(
          index: index,
        );
      },
    );
  }
}
