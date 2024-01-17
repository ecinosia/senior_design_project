import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;
import 'package:senior_design_project/pages/reading_comprehension/components/reading_comp_text_widget.dart';
import '../../components/custom_app_bar.dart';
import '../image_word_match/components/congrats_screen_widget.dart';
import 'components/reading_comp_question_widget.dart';

class ReadingComprehensionPage extends StatefulWidget {
  const ReadingComprehensionPage({super.key});

  @override
  State<ReadingComprehensionPage> createState() =>
      _ReadingComprehensionPageState();
}

class _ReadingComprehensionPageState extends State<ReadingComprehensionPage> {
  int textIndex = 0;
  int answerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: preferredSizeAppBar("Okuduğunu Anlama"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: textIndex < globals.readingComprehensionText.length
            ? readingComprehensionWidget()
            : const CongratsScreenWidget(),
      ),
    );
  }

  Column readingComprehensionWidget() {
    return Column(
      children: [
        ReadingComprehensionTextWidget(index: textIndex),
        ReadingComprehensionQuestionWidget(index: textIndex),
        answerPart(),
      ],
    );
  }

  SizedBox answerPart() {
    return SizedBox(
      width: 350,
      height: 400,
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          final buttonText =
              globals.readingComprehensionOptions[answerIndex * 4 + index];
          return Padding(
            padding: const EdgeInsets.all(6.0),
            child: answerButton(buttonText),
          );
        },
      ),
    );
  }

  ElevatedButton answerButton(String buttonText) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (buttonText == globals.readingComprehensionAnswers[textIndex]) {
            // If the selected answer is correct, increment imageIndex
            textIndex = textIndex + 1;
            // Update the button texts only if the answer is correct
            answerIndex = answerIndex + 1;
          } else {
            showIncorrectAnswerDialog();
          }
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: globals.secondary,
        foregroundColor: globals.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: answerText(buttonText),
    );
  }

  Text answerText(String buttonText) {
    return Text(
      buttonText,
      textAlign: globals.taCenter,
      style: TextStyle(
        color: globals.white,
        fontSize: globals.fs25,
      ),
    );
  }

  void showIncorrectAnswerDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(child: Text('Yanlış Cevap!')),
          content: const Text(
            'Lütfen tekrar dene.',
            textAlign: TextAlign.center,
          ),
          actions: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text('Tamam'),
              ),
            ),
          ],
        );
      },
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
