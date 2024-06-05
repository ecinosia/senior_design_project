import 'package:flutter/material.dart';

class LoginDecoration extends StatelessWidget {
  const LoginDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage(null),
      //     fit: BoxFit.fill,
      //   ),
      // ),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Center(
                child: Text(
                  "Okuma - Yazma Öğreniyoruz",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(143, 148, 251, 1),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
