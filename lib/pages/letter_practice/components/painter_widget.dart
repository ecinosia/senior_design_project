import 'package:finger_painter/finger_painter.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:senior_design_project/constants/globals.dart' as globals;
import 'package:senior_design_project/pages/letter_practice/components/next_letter_button.dart';

import 'clear_button.dart';
import 'color_change_button.dart';
import 'drawable_image.dart';

class PainterWidget extends StatefulWidget {
  const PainterWidget({
    super.key,
    required this.drawableImagePath,
    required this.onPressed,
  });

  final String drawableImagePath;
  final VoidCallback onPressed;

  @override
  State<PainterWidget> createState() => _PainterWidgetState();
}

class _PainterWidgetState extends State<PainterWidget> {
  void nextButtonPressed() {
    setState(() {
      widget.onPressed();
      painterController.clearContent();
    });
  }

  late PainterController painterController;

  @override
  void initState() {
    super.initState();
    painterController = PainterController()
      ..setStrokeColor(Colors.black)
      ..setMinStrokeWidth(3)
      ..setMaxStrokeWidth(15)
      ..setBlurSigma(0.0)
      ..setPenType(PenType.pencil)
      ..setBlendMode(ui.BlendMode.srcOver);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Painter(
          controller: painterController,
          backgroundColor: Colors.transparent,
          onDrawingEnded: (bytes) async {
            setState(() {});
          },
          size: const Size(double.infinity, 175),
          child: DrawableImage(
            drawableImagePath: widget.drawableImagePath,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ColorChangeButton(
              painterController: painterController,
              colorName: globals.black,
            ),
            ColorChangeButton(
              painterController: painterController,
              colorName: globals.pink,
            ),
            ColorChangeButton(
              painterController: painterController,
              colorName: globals.blue,
            ),
            ColorChangeButton(
              painterController: painterController,
              colorName: globals.red,
            ),
            ColorChangeButton(
              painterController: painterController,
              colorName: globals.orange,
            ),
            ColorChangeButton(
              painterController: painterController,
              colorName: globals.yellow,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClearButton(painterController: painterController),
            NextLetterButton(
              onPressed: () {
                nextButtonPressed();
              },
            ),
          ],
        )
      ],
    );
  }
}
