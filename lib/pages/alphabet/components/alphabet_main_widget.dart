import 'package:flutter/material.dart';
import 'alphabet_widget.dart';

class AlphabetMainWidget extends StatelessWidget {
  const AlphabetMainWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenSize.height * .9,
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 50),
        itemCount: 29,
        itemBuilder: (context, index) {
          int baseIndex = index * 3;
          return AlphabetWidget(
              screenSize: screenSize, baseIndex: baseIndex, index: index);
        },
      ),
    );
  }
}
