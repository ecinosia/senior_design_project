import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class CongratsScreenWidget extends StatelessWidget {
  const CongratsScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          globals.congratsImagePath,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 550.0,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                globals.goToHomePage,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
