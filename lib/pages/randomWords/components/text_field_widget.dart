import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.textController,
  });

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: globals.black,
          width: 1.5,
        ),
      ),
      margin: const EdgeInsets.all(20),
      child: TextField(
        controller: textController,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          hintText: 'Kelimeyi buraya yazın',
        ),
      ),
    );
  }
}
