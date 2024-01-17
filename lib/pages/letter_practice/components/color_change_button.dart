import 'package:finger_painter/finger_painter.dart';
import 'package:flutter/material.dart';

class ColorChangeButton extends StatelessWidget {
  const ColorChangeButton({
    super.key,
    required this.painterController,
    required this.colorName,
  });

  final PainterController painterController;
  final Color colorName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        foregroundColor: colorName,
        backgroundColor: colorName,
      ),
      onPressed: () {
        painterController.setBlendMode(BlendMode.srcOver);
        painterController.setStrokeColor(colorName);
      },
      child: const SizedBox(),
    );
  }
}
