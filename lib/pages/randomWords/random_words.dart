import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:senior_design_project/pages/randomWords/components/random_word_card.dart';
import '../../components/custom_app_bar.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

import 'components/feedback_widget.dart';
import 'components/text_field_widget.dart';
import 'components/top_text_widget.dart';

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  String currentWord = '';
  String actualWord = '';
  TextEditingController textController = TextEditingController();
  String feedback = '';

  @override
  void initState() {
    super.initState();
    generateNewWord();
  }

  void generateNewWord() {
    setState(() {
      currentWord =
          globals.randomWords[Random().nextInt(globals.randomWords.length)];
      actualWord = currentWord;
      List<String> shuffledLetters = currentWord.split('')..shuffle();
      currentWord = shuffledLetters.join();
      feedback = '';
      textController.text = '';
    });
  }

  void checkAnswer() {
    setState(() {
      String userAnswer = textController.text
          .toUpperCase(); // Kullanıcı girişi küçük harfe dönüştürülüyor
      String actualWordLowerCase =
          actualWord.toUpperCase(); // Gerçek kelime küçük harfe dönüştürülüyor

      if (userAnswer == actualWordLowerCase) {
        feedback = 'Doğru! Tebrikler!';
        Timer(const Duration(seconds: 2), () {
          generateNewWord();
        });
      } else {
        feedback = 'Yanlış cevap. Tekrar deneyin.';
      }
    });
  }

  void showAnswer() {
    setState(() {
      feedback = 'Doğru Cevap: $actualWord';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: preferredSizeAppBar("Karışık Kelimeler"),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TopTextWidget(),
              RandomWordCard(word: currentWord),
              FeedbackWidget(feedback: feedback),
              TextFieldWidget(textController: textController),
              checkAnswerButtonWidget(),
              bottomButtonsWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Padding bottomButtonsWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: globals.secondary,
            ),
            onPressed: showAnswer,
            child: const Text(
              'Doğru Cevabı Gör',
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.white,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: globals.secondary,
            ),
            onPressed: generateNewWord,
            child: const Text(
              'Sonraki Kelime',
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton checkAnswerButtonWidget() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: globals.primary,
      ),
      onPressed: checkAnswer,
      child: Text(
        'Cevabı Kontrol Et',
        style: TextStyle(
          fontSize: 20.0,
          color: globals.white,
        ),
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
