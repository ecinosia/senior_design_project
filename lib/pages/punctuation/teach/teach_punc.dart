import 'package:flutter/material.dart';
import '../../../components/custom_app_bar.dart';
import 'components/teach_grid_view.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class TeachPuncPage extends StatefulWidget {
  const TeachPuncPage({super.key});

  @override
  State<TeachPuncPage> createState() => _TeachPuncPageState();
}

class _TeachPuncPageState extends State<TeachPuncPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: preferredSizeAppBar(globals.punctuationAppBarTitle),
      body: const TeachGridView(),
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
