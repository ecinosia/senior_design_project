import 'package:flutter/material.dart';
import 'alphabet_main_widget.dart';

class AlphabetCard extends StatefulWidget {
  const AlphabetCard({super.key});

  @override
  State<AlphabetCard> createState() => _AlphabetCardState();
}

class _AlphabetCardState extends State<AlphabetCard> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return AlphabetMainWidget(screenSize: screenSize);
  }
}
