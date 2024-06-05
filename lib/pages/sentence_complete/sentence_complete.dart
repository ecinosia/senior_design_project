// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:math';

import '../../components/custom_app_bar.dart';

class SentenceComplete extends StatelessWidget {
  const SentenceComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: preferredSizeAppBar('Cümle Tamamlama'),
      body: const CumleTamamlamaPage(),
    );
  }
}

class CumleTamamlamaPage extends StatefulWidget {
  const CumleTamamlamaPage({super.key});

  @override
  _CumleTamamlamaPageState createState() => _CumleTamamlamaPageState();
}

class _CumleTamamlamaPageState extends State<CumleTamamlamaPage> {
  final TextEditingController _controller = TextEditingController();

  final List<Map<String, String>> _exercises = [
    {'sentence': 'Güneş doğduğunda her yer _____.', 'answer': 'aydınlanır'},
    {'sentence': 'Çiçekler baharda _____.', 'answer': 'açar'},
    {'sentence': 'Kuşlar gökyüzünde _____.', 'answer': 'uçuyor'},
    {'sentence': 'Elma ağaçta _____.', 'answer': 'büyür'},
    {'sentence': 'Deniz kenarında _____.', 'answer': 'yüzdük'},
    {'sentence': 'Köpekler geceleri _____.', 'answer': 'havlar'},
    {'sentence': 'Kışın hava çok _____.', 'answer': 'soğuk'},
    {'sentence': 'Kitap okumak çok _____.', 'answer': 'eğlenceli'},
    {'sentence': 'Yazın tatilde _____.', 'answer': 'dinleniriz'},
    {'sentence': 'Sabahları kahvaltı _____.', 'answer': 'yaparız'},
    {'sentence': 'Araba sürerken dikkat _____.', 'answer': 'ederiz'},
    {'sentence': 'Yağmur yağdığında şemsiye _____.', 'answer': 'kullanırız'},
    {'sentence': 'Okuldan sonra eve _____.', 'answer': 'gidiyoruz'},
  ];

  List<int> _shuffledIndexes = [];
  int _currentIndex = 0;
  String _feedbackMessage = "";

  @override
  void initState() {
    super.initState();
    _shuffleExercises();
  }

  void _shuffleExercises() {
    _shuffledIndexes = List<int>.generate(_exercises.length, (index) => index);
    _shuffledIndexes.shuffle(Random());
    _currentIndex = 0;
    _feedbackMessage = "";
    _controller.clear();
  }

  void _checkAnswer() {
    setState(() {
      String userAnswer = _controller.text.toLowerCase().trim();
      String correctAnswer =
          _exercises[_shuffledIndexes[_currentIndex]]['answer']!;
      if (userAnswer == correctAnswer) {
        _feedbackMessage = "Tebrikler, doğru cevap!";
      } else {
        _feedbackMessage = "Yanlış cevap, tekrar deneyin.";
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      if (_currentIndex < _shuffledIndexes.length - 1) {
        _currentIndex++;
        _controller.clear();
        _feedbackMessage = "";
      }
    });
  }

  void _previousQuestion() {
    setState(() {
      if (_currentIndex > 0) {
        _currentIndex--;
        _controller.clear();
        _feedbackMessage = "";
      }
    });
  }

  void _restart() {
    setState(() {
      _shuffleExercises();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (_currentIndex < _shuffledIndexes.length - 1)
                Column(
                  children: [
                    Text(
                      _exercises[_shuffledIndexes[_currentIndex]]['sentence']!
                          .replaceAll(
                              '_____',
                              _exercises[_shuffledIndexes[_currentIndex]]
                                  ['answer']!),
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      _exercises[_shuffledIndexes[_currentIndex]]['sentence']!,
                      style: const TextStyle(fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20.0),
                    TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Boşluğu doldurun',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: _checkAnswer,
                      child: const Text('Cevabı Kontrol Et'),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      _feedbackMessage,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: _feedbackMessage == "Tebrikler, doğru cevap!"
                            ? Colors.green
                            : Colors.red,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: _previousQuestion,
                          child: const Text('Önceki Soru'),
                        ),
                        ElevatedButton(
                          onPressed: _nextQuestion,
                          child: const Text('Sonraki Soru'),
                        ),
                      ],
                    ),
                  ],
                )
              else
                Column(
                  children: [
                    const Text(
                      'Tebrikler, tüm alıştırmaları tamamladınız!',
                      style: TextStyle(fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: _restart,
                      child: const Text('Tekrar Oyna'),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
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
