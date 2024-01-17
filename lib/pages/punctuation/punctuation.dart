import 'package:flutter/material.dart';
import 'package:senior_design_project/pages/punctuation/exercise/exercise_punc.dart';
import 'package:senior_design_project/pages/punctuation/teach/teach_punc.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;
import '../../components/custom_app_bar.dart';

class PunctuationPage extends StatefulWidget {
  const PunctuationPage({super.key});

  @override
  State<PunctuationPage> createState() => _PunctuationPageState();
}

class _PunctuationPageState extends State<PunctuationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: preferredSizeAppBar(globals.punctuationAppBarTitle),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 250,
              width: 350,
              child: Card(
                elevation: globals.elev15,
                color: globals.primary,
                shape: globals.roundedRectangleBorder_circular_12,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TeachPuncPage()));
                  },
                  child: Center(
                    child: Text(
                      style: TextStyle(
                        color: globals.white,
                        fontSize: globals.fs35,
                        letterSpacing: 13,
                      ),
                      textAlign: globals.taCenter,
                      globals.learnPunc,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 250,
              width: 350,
              child: Card(
                elevation: globals.elev15,
                color: globals.primary,
                shape: globals.roundedRectangleBorder_circular_12,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExercisePuncPage()));
                  },
                  child: Center(
                    child: Text(
                      style: TextStyle(
                        color: globals.white,
                        fontSize: globals.fs35,
                        letterSpacing: 11,
                      ),
                      textAlign: globals.taCenter,
                      globals.exercisePunc,
                    ),
                  ),
                ),
              ),
            ),
          ],
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
