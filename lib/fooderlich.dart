import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';
import 'home.dart';

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override // alla stateless widgets måste override:a build()
  Widget build(BuildContext context) {
    final lightTheme = FooderlichTheme.light();
    // final darkTheme = FooderlichTheme.dark();

    return MaterialApp(
      theme: lightTheme,
      title: 'Fooderlich OA',
      home: const Home(),
    );
  }
}
