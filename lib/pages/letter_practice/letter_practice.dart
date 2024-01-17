import 'package:flutter/material.dart';
import 'package:senior_design_project/pages/letter_practice/components/painter_widget.dart';
import '../../components/custom_app_bar.dart';
import 'components/letter_image_widget.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class LetterPracticePage extends StatefulWidget {
  const LetterPracticePage({super.key});

  @override
  State<LetterPracticePage> createState() => _LetterPracticePageState();
}

class _LetterPracticePageState extends State<LetterPracticePage> {
  int currentIndex = 0;

  void imageIndex() {
    setState(() {
      currentIndex = (currentIndex + 1) % globals.letterImageList.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: preferredSizeAppBar(globals.letterPracticeAppBarTitle),
      body: Column(
        children: [
          LetterImageWidget(
            letterImagePath: globals.letterImageList[currentIndex],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
            ),
            child: PainterWidget(
              drawableImagePath: globals.drawableImageList[currentIndex],
              onPressed: () {
                imageIndex();
              },
            ),
          ),
        ],
      ),
    );
  }

  PreferredSize preferredSizeAppBar(String title) {
    return PreferredSize(
      preferredSize: const Size(
        double.infinity,
        50,
      ),
      child: CustomAppBar(
        title: title,
      ),
    );
  }
}
