import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;
import 'package:senior_design_project/pages/punctuation/exercise/components/question_text.dart';
import '../../../components/custom_app_bar.dart';

class ExercisePuncPage extends StatefulWidget {
  const ExercisePuncPage({super.key});

  @override
  State<ExercisePuncPage> createState() => _ExercisePuncPageState();
}

class _ExercisePuncPageState extends State<ExercisePuncPage> {
  int sentenceIndex = 0;
  int answerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: preferredSizeAppBar(globals.puncExerciseAppBarTitle),
      body: sentenceIndex < globals.punchExerciseSentences.length
          ? punchExerciseWidget()
          : Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    globals.congratsImagePath,
                    fit: BoxFit.fill,
                  ),
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
            ),
    );
  }

  Column punchExerciseWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const QuestionText(),
        SentenceText(sentenceIndex: sentenceIndex),
        answerPart(),
      ],
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

  SizedBox answerPart() {
    return SizedBox(
      width: 320,
      height: 375,
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          final buttonText =
              globals.punchExerciseOptions[answerIndex * 4 + index];
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
          if (buttonText == globals.punchExerciseAnswer[sentenceIndex]) {
            // If the selected answer is correct, increment imageIndex
            sentenceIndex = sentenceIndex + 1;
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
      style: TextStyle(
        color: globals.white,
        fontSize: globals.fs60,
      ),
    );
  }

  void showIncorrectAnswerDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(child: Text(globals.dialogWrongAnswer)),
          content: const Text(
            globals.dialogTryAgain,
            textAlign: TextAlign.center,
          ),
          actions: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text(globals.dialogOk),
              ),
            ),
          ],
        );
      },
    );
  }
}

class SentenceText extends StatelessWidget {
  const SentenceText({
    super.key,
    required this.sentenceIndex,
  });

  final int sentenceIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        globals.punchExerciseSentences[sentenceIndex],
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: globals.fs32,
        ),
      ),
    );
  }
}
