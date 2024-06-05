// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:senior_design_project/auth/auth.dart' as auth;

class LoginButton extends StatelessWidget {
  final TextEditingController emailAddress;
  final TextEditingController password;

  const LoginButton({
    Key? key,
    required this.emailAddress,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 100,
      child: MaterialButton(
        padding: const EdgeInsets.all(0),
        onPressed: () {
          auth.signInWithEmailAndPassword(context, emailAddress, password);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Ink(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(143, 148, 251, 1),
                Color.fromRGBO(143, 148, 251, .6),
              ],
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: const Center(
            child: Text(
              "Giriş yap",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
