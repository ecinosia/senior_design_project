import 'dart:math';
import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;
import '../../components/custom_app_bar.dart';
import '../image_word_match/components/congrats_screen_widget.dart';

class WordMeaningPage extends StatefulWidget {
  const WordMeaningPage({super.key});

  @override
  State<WordMeaningPage> createState() => _WordMeaningPageState();
}

class _WordMeaningPageState extends State<WordMeaningPage> {
  String feedback = '';
  TextEditingController inputController = TextEditingController();
  String currentWord = "";
  int wordIndex = 0;
  int currentWordIndex = 0;

  @override
  void initState() {
    super.initState();
    generateMeaning();
  }

  void checkAnswer() {
    String userAnswer = inputController.text.toLowerCase();

    setState(() {
      if (userAnswer == currentWord) {
        feedback = 'Doğru!';
        generateMeaning();
      } else {
        debugPrint(currentWord);
        feedback = 'Yanlış!';
      }
    });
  }

  void generateMeaning() {
    currentWordIndex = Random().nextInt(globals.wordMeaningWordList.length);
    currentWord = globals.wordMeaningWordList[currentWordIndex].toLowerCase();
    wordIndex++;
    inputController.clear();
  }

  void showCorrectWord() {
    setState(() {
      feedback =
          'Doğru Cevap: ${globals.wordMeaningWordList[currentWordIndex]}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: preferredSizeAppBar("Bu Hangi Kelime?"),
      body: wordIndex < 25
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Anlamı Bul!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  globals.wordMeaningMeaningList[currentWordIndex],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 30.0,
                    left: 30.0,
                  ),
                  child: TextField(
                    controller: inputController,
                    decoration: const InputDecoration(
                      labelText: "Kelime Ne?",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        checkAnswer();
                      },
                      child: const Text('Kontrol Et'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showCorrectWord();
                      },
                      child: const Text('Doğru Cevabı Gör'),
                    ),
                  ],
                ),
                Text(
                  feedback,
                  style: TextStyle(
                    fontSize: 16.0,
                    color:
                        feedback.contains('Doğru') ? Colors.green : Colors.red,
                  ),
                ),
              ],
            )
          : const CongratsScreenWidget(),
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
