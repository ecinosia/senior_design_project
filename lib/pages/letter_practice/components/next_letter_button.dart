import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class NextLetterButton extends StatefulWidget {
  const NextLetterButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  State<NextLetterButton> createState() => _NextLetterButtonState();
}

class _NextLetterButtonState extends State<NextLetterButton> {
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
          backgroundColor: globals.secondary,
        ),
        onPressed: widget.onPressed,
        child: Row(
          children: [
            Text(
              globals.nextLetterButtonText,
              style: TextStyle(
                color: globals.white,
                fontSize: globals.fs25,
                fontWeight: globals.fw800,
              ),
            ),
            Icon(
              CupertinoIcons.chevron_forward,
              color: globals.white,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
