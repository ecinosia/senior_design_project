import 'package:flutter/material.dart';
import 'package:senior_design_project/pages/home/home_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/welcome.png"),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 600, 0, 0),
          child: Center(
            child: SizedBox(
              height: 50,
              width: 275,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Text(
                  "BAŞLAYALIM",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
