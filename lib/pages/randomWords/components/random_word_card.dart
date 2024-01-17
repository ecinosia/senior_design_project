import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class RandomWordCard extends StatefulWidget {
  const RandomWordCard({super.key, required this.word});

  final String word;

  @override
  State<RandomWordCard> createState() => _RandomWordCardState();
}

class _RandomWordCardState extends State<RandomWordCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        widget.word,
        style: TextStyle(
          color: globals.primary,
          fontSize: 65,
          fontWeight: FontWeight.w600,
          letterSpacing: 8,
        ),
      ),
    );
  }
}
