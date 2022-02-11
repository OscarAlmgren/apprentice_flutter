import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);

  @override // alla stateless widgets måste override:a buidl()
  Widget build(BuildContext context) {
    final lightTheme = FooderlichTheme.light();
    final darkTheme = FooderlichTheme.dark();

    return MaterialApp(
      theme: lightTheme, // light theme
      darkTheme: darkTheme, // dark theme
      title: 'Fooderlich',
      home: Scaffold(
        // Style the title
        appBar: AppBar(
          title: Text(
            'Fooderlich',
            style: darkTheme.textTheme.headline6,
          ),
        ),
        // Style the body text
        body: Center(
          child: Text(
            'Let\'s get cooking 👩🏻‍🍳',
            style: darkTheme.textTheme.headline2,
          ),
        ),
      ),
    );
  }
}
