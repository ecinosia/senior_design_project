import 'package:flutter/material.dart';

class DrawableImage extends StatelessWidget {
  const DrawableImage({
    super.key,
    required this.drawableImagePath,
  });

  final String drawableImagePath;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Image.asset(drawableImagePath, fit: BoxFit.cover));
  }
}
