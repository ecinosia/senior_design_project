import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class TopTextWidget extends StatelessWidget {
  const TopTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15.0,
      ),
      child: Text(
        'Karışık verilen kelimenin doğrusunu tahmin et!',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: globals.black,
          fontSize: 22,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
