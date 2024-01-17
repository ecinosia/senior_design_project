import 'package:flutter/material.dart';
import 'package:senior_design_project/constants/globals.dart' as globals;
import 'package:senior_design_project/pages/home/components/home_page_cards.dart';

class HomePageGridViewWidget extends StatelessWidget {
  const HomePageGridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 8,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return HomePageCard(
            index: index,
            pageName: globals.homePageMenuButtons[index],
            onTap: globals.onTapFunctions(context)[index]);
      },
    );
  }
}
