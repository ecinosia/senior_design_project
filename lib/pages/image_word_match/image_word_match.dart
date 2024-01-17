import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;
import '../../components/custom_app_bar.dart';
import 'components/congrats_screen_widget.dart';
import 'components/question_image_widget.dart';
import 'components/question_text_widget.dart';

class ImageWordMatchPage extends StatefulWidget {
  const ImageWordMatchPage({super.key});

  @override
  State<ImageWordMatchPage> createState() => _ImageWordMatchPageState();
}

class _ImageWordMatchPageState extends State<ImageWordMatchPage> {
  int imageIndex = 0;
  int answerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: preferredSizeAppBar(globals.imageWordMatchAppBarTitle),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: imageIndex < globals.matchWordImageList.length
            ? wordMatchWidget()
            : const CongratsScreenWidget(),
      ),
    );
  }

  Column wordMatchWidget() {
    return Column(
      children: [
        QuestionImageWidget(imageIndex: imageIndex),
        const QuestionTextWidget(),
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
              globals.matchWordOptionList[answerIndex * 4 + index];
          return Padding(
            padding: globals.eiall_6,
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
          if (buttonText == globals.matchWordAnswerList[imageIndex]) {
            // If the selected answer is correct, increment imageIndex
            imageIndex = imageIndex + 1;
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
        shape: globals.roundedRectangleBorder_circular_5,
      ),
      child: answerText(buttonText),
    );
  }

  Text answerText(String buttonText) {
    return Text(
      buttonText,
      style: TextStyle(
        color: globals.white,
        fontSize: globals.fs20,
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

  void showIncorrectAnswerDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(
            child: Text(
              globals.dialogWrongAnswer,
            ),
          ),
          content: const Text(
            globals.dialogTryAgain,
            textAlign: globals.taCenter,
          ),
          actions: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text(
                  globals.dialogOk,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
