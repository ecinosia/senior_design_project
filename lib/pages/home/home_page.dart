import 'package:flutter/material.dart';
import '../../components/custom_app_bar.dart';
import 'components/home_page_grid_view_widget.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: preferredSizeAppBar(),
      body: const HomePageGridViewWidget(),
    );
  }

  PreferredSize preferredSizeAppBar() {
    return PreferredSize(
      preferredSize: const Size(
        double.infinity,
        50,
      ),
      child: CustomAppBar(
        title: globals.homePageAppBarTitle,
      ),
    );
  }
}
