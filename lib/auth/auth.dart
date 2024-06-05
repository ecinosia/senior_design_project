// ignore_for_file: unused_local_variable, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:senior_design_project/pages/home/home_page.dart';

createUserWithEmailAndPassword(
    BuildContext context,
    TextEditingController emailAddress,
    TextEditingController password,
    TextEditingController name,
    TextEditingController lastName) async {
  final dbRef = FirebaseFirestore.instance.collection("users");

  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress.text,
      password: password.text,
    );

    debugPrint('User created with UID: ${credential.user!.uid}');

    await dbRef.doc(credential.user!.uid).set({
      'name': name.text,
      'lastName': lastName.text,
      'email': emailAddress.text,
      'password': password.text,
      'user_level': 0,
    });

    debugPrint('User data written to Firestore.');

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          title: Text("Hoşgeldiniz!"),
          content: Text(
              "Başarıyla kayıt oldunuz!\nAna sayfaya yönlendiriliyorsunuz!"),
        );
      },
    );

    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      },
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      debugPrint('Şifreniz zayıf. Lütfen daha güçlü bir şifre seçiniz.');
    } else if (e.code == 'email-already-in-use') {
      debugPrint('E-posta adresi zaten kullanılıyor.');
    } else {
      debugPrint('Bir hata oluştu: ${e.message}');
      debugPrint(
          '${name.text}, ${lastName.text},${emailAddress.text},${password.text},');
    }
  } catch (e) {
    debugPrint('Bir hata oluştu: $e');
  }
}

signInWithEmailAndPassword(BuildContext context,
    TextEditingController emailAddress, TextEditingController password) async {
  try {
    final credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: emailAddress.text, password: password.text)
        .then(
      (result) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text("Tekrar hoşgeldiniz!"),
              content: Text(
                  "Başarıyla giriş yaptınız!\nAna sayfaya yönlendiriliyorsunuz!"),
            );
          },
        );
        Future.delayed(
          const Duration(seconds: 5),
          () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        );
      },
    ).catchError((err) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Hata"),
              content: Text(err.message),
              actions: [
                TextButton(
                  child: const Text("Tamam"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    });
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      debugPrint('Bu e-posta adresi için kullanıcı bulunamadı.');
    } else if (e.code == 'wrong-password') {
      debugPrint('Bu kullanıcı için girilen şifre yanlış.');
    }
  }
}

signOut() async {
  await FirebaseAuth.instance.signOut();
}
