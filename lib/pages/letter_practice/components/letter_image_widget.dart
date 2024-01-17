import 'package:flutter/material.dart';

class LetterImageWidget extends StatelessWidget {
  const LetterImageWidget({
    super.key,
    required this.letterImagePath,
  });

  final String letterImagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8.0,
        top: 8.0,
      ),
      child: Image.asset(letterImagePath),
    );
  }
}
