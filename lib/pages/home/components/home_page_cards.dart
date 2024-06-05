import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class HomePageCard extends StatefulWidget {
  const HomePageCard(
      {super.key,
      required this.pageName,
      required this.onTap,
      required this.index});

  final String pageName;
  final VoidCallback onTap;
  final int index;

  @override
  State<HomePageCard> createState() => _HomePageCardState();
}

List<Color?> homePageButtonColors = [
  const Color.fromARGB(255, 246, 154, 146),
  const Color.fromARGB(255, 102, 205, 170),
  const Color.fromARGB(255, 243, 93, 64),
  const Color.fromARGB(255, 255, 195, 160),
  const Color.fromARGB(255, 255, 0, 0),
  const Color.fromARGB(255, 186, 218, 85),
  const Color.fromARGB(255, 42, 202, 234),
  const Color.fromARGB(255, 255, 165, 0),
  const Color.fromARGB(255, 42, 202, 234),
  const Color.fromARGB(255, 255, 165, 0),
  const Color.fromARGB(255, 255, 195, 160),
];

class _HomePageCardState extends State<HomePageCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: widget.onTap,
        child: SizedBox(
          width: 200,
          height: 200,
          child: Card(
            elevation: globals.elev15,
            color: homePageButtonColors[widget.index],
            shape: globals.roundedRectangleBorder_circular_8,
            child: Align(
              alignment: globals.alignCenter,
              child: Text(
                widget.pageName,
                textAlign: globals.taCenter,
                style: TextStyle(
                  color: globals.white,
                  fontSize: globals.fs36,
                  fontWeight: globals.fw300,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
