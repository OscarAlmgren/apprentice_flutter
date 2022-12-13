import 'package:apprentice_flutter/fooderlich_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'grocery_screen.dart';
import 'recipes_screen.dart';
import 'explore_screen.dart';
import '../models/models.dart';

class Home extends StatefulWidget {
  final int currentTab;

  static MaterialPage page(int currentTab) {
    return MaterialPage(
      name: FooderlichPages.home,
      key: ValueKey(FooderlichPages.home),
      child: Home(
        currentTab: currentTab,
      ),
    );
  }

  const Home({Key? key, required this.currentTab}) : super(key: key);

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
    return Consumer<AppStateManager>(
      builder: (context, appStateManager, child) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Fooderlich',
                style: FooderlichTheme.darkTextTheme.headline3,
              ),
              actions: [
                profileButton(),
              ],
            ),
            body: IndexedStack(
              index: widget.currentTab,
              children: pages,
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: widget.currentTab,
              onTap: (index) {
                Provider.of<AppStateManager>(context, listen: false)
                    .goToTab(index);
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

  Widget profileButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: () {
          Provider.of<ProfileManager>(context, listen: false)
              .tapOnProfile(true);
        },
        child: const CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/profile_pics/person_stef.jpeg'),
        ),
      ),
    );
  }
}
