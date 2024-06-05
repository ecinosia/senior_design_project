// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:senior_design_project/pages/home/home_page.dart';

import '../../components/custom_app_bar.dart';

class ReadWriteTest extends StatelessWidget {
  const ReadWriteTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: preferredSizeAppBar('Okuma Yazma Testi'),
      body: const QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Question> questions = [
    Question('Elma bir meyvedir.', true),
    Question('Köpek uçar.', false),
    Question('Türkiye’nin başkenti İstanbul’dur.', false),
    Question('Güneş doğudan doğar.', true),
    Question('Su renksizdir.', true),
    Question('Kelebekler birer böcektir.', true),
    Question('Kediler köpeklerden küçüktür.', true),
    Question('Balıklar suda yaşar.', true),
    Question('Kışın havalar ısınır.', false),
    Question('Ağaçların yaprakları yeşildir.', true),
    Question('Aslanlar et yer.', true),
    Question('Kuşlar denizde yüzer.', false),
    Question('Elektrik tehlikelidir.', true),
    Question('Ay güneşten büyüktür.', false),
    Question('Çiçekler toprakta yetişir.', true),
  ];

  int currentQuestionIndex = 0;
  int correctAnswers = 0;
  List<Question> wrongQuestions = [];

  @override
  void initState() {
    super.initState();
    questions.shuffle(); // Soruları karıştır
  }

  void answerQuestion(bool answer) {
    setState(() {
      if (questions[currentQuestionIndex].answer == answer) {
        correctAnswers++;
      } else {
        wrongQuestions.add(questions[currentQuestionIndex]);
      }
      currentQuestionIndex++;
    });
  }

  void resetQuiz() {
    setState(() {
      questions.shuffle();
      currentQuestionIndex = 0;
      correctAnswers = 0;
      wrongQuestions.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/bg_image.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: currentQuestionIndex < questions.length
            ? SizedBox(
                height: MediaQuery.of(context).size.height, child: buildQuiz())
            : SizedBox(
                height: MediaQuery.of(context).size.height,
                child: buildResult()),
      ),
    );
  }

  Widget buildQuiz() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              questions[currentQuestionIndex].questionText,
              style: const TextStyle(fontSize: 24.0),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () => answerQuestion(true),
          child: const Text('Doğru'),
        ),
        ElevatedButton(
          onPressed: () => answerQuestion(false),
          child: const Text('Yanlış'),
        ),
      ],
    );
  }

  Widget buildResult() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Doğru cevap sayısı: $correctAnswers',
            style: const TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 20.0),
          Text(
            'Yanlış cevap sayısı: ${questions.length - correctAnswers}',
            style: const TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 20.0),
          wrongQuestions.isNotEmpty
              ? Column(
                  children: wrongQuestions.map((question) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Yanlış: ${question.questionText}\nDoğru Cevap: "${question.answer ? "Doğru" : "Yanlış"}" şıkkı olmalıdır.',
                        style: const TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.center,
                      ),
                    );
                  }).toList(),
                )
              : Container(),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: resetQuiz,
            child: const Text('Tekrar Çöz'),
          ),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text('Ana Sayfaya Dön'),
          ),
        ],
      ),
    );
  }
}

class Question {
  String questionText;
  bool answer;

  Question(this.questionText, this.answer);
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
