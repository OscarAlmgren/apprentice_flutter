import 'package:apprentice_flutter/fooderlich_theme.dart';

import 'screens/recipes_screen.dart';
import 'package:flutter/material.dart';
import 'screens/explore_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedNavigationIndex = 0;

  static List<Widget> pages = <Widget>[
    const ExploreScreen(),
    RecipesScreen(),
    Container(
      color: Colors.cyan,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedNavigationIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fooderlich',
            style: FooderlichTheme.darkTextTheme.headline3,
          ),
        ),
        body: pages[_selectedNavigationIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedNavigationIndex,
          onTap: _onItemTapped,
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
  }
}
