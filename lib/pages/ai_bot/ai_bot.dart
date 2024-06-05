// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

import '../../components/custom_app_bar.dart';

class AIBot extends StatefulWidget {
  const AIBot({super.key});

  @override
  State<AIBot> createState() => _AIBotState();
}

class _AIBotState extends State<AIBot> {
  TextEditingController userMessageController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final model = GenerativeModel(
      model: 'gemini-1.5-flash-latest',
      apiKey: "AIzaSyCbkCKJ3J257qPkskhQDqE4dr-pE6lGLpM");
  final List<String> chatHistory = [];
  final List<String> chatSender = [];

  bool loading = false;
  String userUid = "";
  String? userName;
  var userNameManipulated;

  @override
  void initState() {
    super.initState();
    model;

    getUserName();
  }

  @override
  void dispose() {
    userMessageController.dispose();
    super.dispose();
  }

  void sendMessage(String message) async {
    setState(() {
      loading = true;
      userMessageController.clear();
    });
    chatSender.add('${userNameManipulated[0]}: ');
    chatHistory.add(message);
    final prompt = message;
    final content = [Content.text(prompt)];

    try {
      final response = await model.generateContent(content);
      setState(() {
        chatSender.add('EğitimAI: ');
        chatHistory.add("${response.text}");
        loading = false;
      });
    } catch (e) {
      setState(() {
        chatHistory.add("Bir şeyler yanlış gitti. Tekrar deneyiniz!");
        debugPrint('Error: $e');
        loading = false;
      });
    }
  }

  void getUserName() {
    User? user = _auth.currentUser;
    FirebaseFirestore.instance
        .collection('users')
        .doc(user?.uid)
        .get()
        .then((DocumentSnapshot ds) {
      setState(() {
        userName = ds['name'];
        userNameManipulated = userName!.split(' ');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: preferredSizeAppBar('Yapay Zeka İle Öğren'),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .65,
                child: ListView.builder(
                  itemCount: chatHistory.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: chatSender[index],
                            style: const TextStyle(
                              height: 1.5,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: '\n${chatHistory[index]}',
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.green,
                              fontSize: 18,
                            ),
                          ),
                        ]),
                      ),
                    );
                  },
                ),
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Bugün sizin için ne yapabilirim?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .75,
                    height: 50,
                    child: CupertinoTextField.borderless(
                      controller: userMessageController,
                      cursorColor: Colors.pink,
                      placeholder: 'Mesajınızı giriniz!',
                      placeholderStyle: TextStyle(
                        fontSize: 13,
                        color: Colors.white.withOpacity(.5),
                        fontWeight: FontWeight.w300,
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green.shade400,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffix: loading
                          ? SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                color: Colors.pink.shade400,
                              ),
                            )
                          : IconButton(
                              onPressed: () {
                                sendMessage(userMessageController.text);
                                userMessageController.clear();
                              },
                              icon: const Icon(
                                Icons.send_rounded,
                                color: Colors.pink,
                              ),
                            ),
                    ),
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
