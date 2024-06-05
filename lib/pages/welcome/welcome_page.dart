// ignore_for_file: no_leading_underscores_for_local_identifiers, library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../components/login_button.dart';
import '../../components/login_decoration.dart';
import '../sign_up/sign_up_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool _pageLogin = true;
  // bool _rememberPassword = false;

  void _togglePage(bool _switchme) {
    setState(
      () {
        _pageLogin = _switchme;
      },
    );
  }

  bool _ishidden = true;

  void _toggleVisibility() {
    setState(
      () {
        _ishidden = !_ishidden;
      },
    );
  }

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const LoginDecoration(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                      _pageLogin
                          ? const Color.fromRGBO(143, 148, 251, 1)
                          : Colors.white,
                    ),
                  ),
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(
                      color: _pageLogin
                          ? Colors.white
                          : const Color.fromRGBO(143, 148, 251, 1),
                    ),
                  ),
                  onPressed: () {
                    _togglePage(true);
                  },
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                      _pageLogin
                          ? Colors.white
                          : const Color.fromRGBO(143, 148, 251, 1),
                    ),
                  ),
                  child: Text(
                    "Kayıt Ol",
                    style: TextStyle(
                      color: _pageLogin
                          ? const Color.fromRGBO(143, 148, 251, 1)
                          : Colors.white,
                    ),
                  ),
                  onPressed: () {
                    _togglePage(false);
                  },
                ),
              ],
            ),
            _pageLogin
                ? Padding(
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
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey.shade100,
                                    ),
                                  ),
                                ),
                                child: TextField(
                                  controller: emailController,
                                  cursorColor: Colors.purpleAccent,
                                  style: const TextStyle(
                                      color: Color.fromRGBO(143, 148, 251, 1)),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "E-posta Adresi",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400]),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
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
                                    hintText: "Şifre",
                                    hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LoginButton(
                          emailAddress: emailController,
                          password: passwordController,
                        ),
                      ],
                    ),
                  )
                : const SignupPage()
          ],
        ),
      ),
    );
  }
}
