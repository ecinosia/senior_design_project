import 'package:finger_painter/finger_painter.dart';
import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class ClearButton extends StatelessWidget {
  const ClearButton({
    super.key,
    required this.painterController,
  });

  final PainterController painterController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(150, 80),
          elevation: globals.elev12,
          backgroundColor: globals.primary,
        ),
        onPressed: () {
          painterController.clearContent();
        },
        child: Text(
          globals.clearButtonText,
          style: TextStyle(
            color: globals.white,
            fontSize: globals.fs25,
            fontWeight: globals.fw800,
          ),
        ),
      ),
    );
  }
}
