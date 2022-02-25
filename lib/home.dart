import 'package:apprentice_flutter/fooderlich_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'screens/grocery_screen.dart';
import 'screens/recipes_screen.dart';
import 'screens/explore_screen.dart';
import 'models/models.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List<Widget> pages = <Widget>[
    const ExploreScreen(),
    RecipesScreen(),
    const GroceryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(
      builder: (context, tabManager, child) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Fooderlich',
                style: FooderlichTheme.darkTextTheme.headline3,
              ),
            ),
            body: pages[tabManager.selectedTab],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabManager.selectedTab,
              onTap: (index) {
                tabManager.goToTab(index);
              },
              selectedItemColor:
                  Theme.of(context).textSelectionTheme.selectionColor,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.explore),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  label: 'Recipes',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.checklist),
                  label: 'To Buy',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
