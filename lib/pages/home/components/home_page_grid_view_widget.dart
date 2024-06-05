// ignore_for_file: unused_element

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:senior_design_project/pages/home/components/home_page_cards.dart';

import '../../ai_bot/ai_bot.dart';
import '../../alphabet/alphabet_page.dart';
import '../../image_word_match/image_word_match.dart';
import '../../letter_practice/letter_practice.dart';
import '../../punctuation/punctuation.dart';
import '../../randomWords/random_words.dart';
import '../../read_write_test/read_write_test.dart';
import '../../reading_comprehension/reading_comprehension.dart';
import '../../sentence_complete/sentence_complete.dart';
import '../../spelling_rules/spelling_rules.dart';
import '../../word_meaning/word_meaning.dart';

class HomePageGridViewWidget extends StatefulWidget {
  const HomePageGridViewWidget({
    super.key,
  });

  @override
  State<HomePageGridViewWidget> createState() => _HomePageGridViewWidgetState();
}

class _HomePageGridViewWidgetState extends State<HomePageGridViewWidget> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  int? _userLevel;

  @override
  void initState() {
    super.initState();
    _fetchUserLevel();
  }

  Future<void> _fetchUserLevel() async {
    User? user = _auth.currentUser;

    if (user != null) {
      DocumentSnapshot userDoc =
          await _firestore.collection('users').doc(user.uid).get();

      if (userDoc.exists) {
        setState(() {
          _userLevel = userDoc['user_level'];
        });
      } else {
        // Handle case where user document does not exist
        setState(() {
          _userLevel = -1;
        });
      }
    }
  }

  Future<void> _updateUserLevel(int newLevel) async {
    User? user = _auth.currentUser;

    if (user != null) {
      try {
        // Perform your action that updates user level (example)
        // For demonstration, let's assume you increase the user level by 1

        // Update the user level in Firestore
        await _firestore.collection('users').doc(user.uid).update({
          'user_level': newLevel,
        });

        // Update the local state
        setState(() {
          _userLevel = newLevel;
        });

        // Optionally, you can call _fetchUserLevel again to ensure the local state is updated
        // await _fetchUserLevel();
      } catch (e) {
        debugPrint('Error updating user level: $e');
        // Handle any errors that occur during the update process
      }
    }
  }

  void _showAccessDeniedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Erişemezsiniz!'),
          content: const Text(
              'Bu aktivite için seviyeniz yeterli değil. Önceki aktiviteleri tamamlayınız!'),
          actions: <Widget>[
            TextButton(
              child: const Text('Tamam'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  List<String> homePageMenuButtons = [
    "Alfabeyi Öğrenelim",
    "Harf Alıştırması",
    "Resim ve Kelime Eşleştirme",
    "Karışık Kelimeler",
    "Anlamdan Kelime Bilme",
    "Okuduğunu Anlama",
    "Noktalama İşaretleri",
    "Yazım Kuralları",
    "Okuma Yazma Testi",
    "Cümle Tamamlama",
    "Yapay Zeka ile Öğrenelim"
  ];

  List<VoidCallback> onTapFunctions(BuildContext context) => [
        () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AlphabetPage()));
          _updateUserLevel(1);
        },
        _userLevel == 1
            ? () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LetterPracticePage()));
                _updateUserLevel(2);
              }
            : () => _showAccessDeniedDialog(context),
        _userLevel == 2
            ? () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ImageWordMatchPage()));
                _updateUserLevel(3);
              }
            : () => _showAccessDeniedDialog(context),
        _userLevel == 3
            ? () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RandomWords()));
                _updateUserLevel(4);
              }
            : () => _showAccessDeniedDialog(context),
        _userLevel == 4
            ? () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WordMeaningPage()));
                _updateUserLevel(5);
              }
            : () => _showAccessDeniedDialog(context),
        _userLevel == 5
            ? () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ReadingComprehensionPage()));
                _updateUserLevel(6);
              }
            : () => _showAccessDeniedDialog(context),
        _userLevel == 6
            ? () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PunctuationPage()));
                _updateUserLevel(7);
              }
            : () => _showAccessDeniedDialog(context),
        _userLevel == 7
            ? () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SpellingRulesPage()));
                _updateUserLevel(8);
              }
            : () => _showAccessDeniedDialog(context),
        _userLevel == 8
            ? () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReadWriteTest()));
                _updateUserLevel(9);
              }
            : () => _showAccessDeniedDialog(context),
        _userLevel == 9
            ? () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SentenceComplete()));
              }
            : () => _showAccessDeniedDialog(context),
        () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const AIBot()));
        }
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: homePageMenuButtons.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return HomePageCard(
            index: index,
            pageName: homePageMenuButtons[index],
            onTap: onTapFunctions(context)[index],
          );
        },
      ),
    );
  }
}
