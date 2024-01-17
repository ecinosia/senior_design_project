import 'package:flutter/material.dart';
import 'package:flutter_randomcolor/flutter_randomcolor.dart';
import '../../components/custom_app_bar.dart';
import 'components/spelling_grid_view_widget.dart';

class SpellingRulesPage extends StatefulWidget {
  const SpellingRulesPage({super.key});

  @override
  State<SpellingRulesPage> createState() => _SpellingRulesPageState();
}

class _SpellingRulesPageState extends State<SpellingRulesPage> {
  Options options = Options();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: preferredSizeAppBar("Yazım Kuralları"),
      body: const SpellingGridViewWidget(),
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
