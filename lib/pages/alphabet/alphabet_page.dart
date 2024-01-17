import 'package:flutter/material.dart';
import 'package:senior_design_project/pages/alphabet/components/alphabet_card.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;
import '../../components/custom_app_bar.dart';

class AlphabetPage extends StatefulWidget {
  const AlphabetPage({super.key});

  @override
  State<AlphabetPage> createState() => _AlphabetPageState();
}

class _AlphabetPageState extends State<AlphabetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: preferredSizeAppBar(globals.alphabetAppBarTitle),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: const AssetImage(
                "assets/images/resim1.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: const Column(
            children: [
              AlphabetCard(),
            ],
          ),
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
