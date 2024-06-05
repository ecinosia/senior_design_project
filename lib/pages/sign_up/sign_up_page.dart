// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../../components/sign_up_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _ishidden = true;

  void _toggleVisibility() {
    setState(
      () {
        _ishidden = !_ishidden;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(143, 148, 251, .2),
                    blurRadius: 20.0,
                    offset: Offset(0, 10),
                  )
                ],
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade100,
                        ),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: nameController,
                          cursorColor: Colors.purpleAccent,
                          style: const TextStyle(
                              color: Color.fromRGBO(143, 148, 251, 1)),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "İsim",
                            hintStyle: TextStyle(color: Colors.grey[400]),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextField(
                          controller: lastNameController,
                          cursorColor: Colors.purpleAccent,
                          style: const TextStyle(
                              color: Color.fromRGBO(143, 148, 251, 1)),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Soy isim",
                            hintStyle: TextStyle(color: Colors.grey[400]),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Colors.purpleAccent,
                          style: const TextStyle(
                              color: Color.fromRGBO(143, 148, 251, 1)),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "E-posta adresi",
                            hintStyle: TextStyle(color: Colors.grey[400]),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextField(
                          controller: passwordController,
                          obscureText: _ishidden ? true : false,
                          style: const TextStyle(
                              color: Color.fromRGBO(143, 148, 251, 1)),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(_ishidden
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: _toggleVisibility,
                            ),
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SignupButton(
              name: nameController,
              lastName: lastNameController,
              emailAddress: emailController,
              password: passwordController,
            ),
          ],
        ),
      ),
    );
  }
}
