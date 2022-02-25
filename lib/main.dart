import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';

import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override // alla stateless widgets måste override:a build()
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();
    // final theme = FooderlichTheme.dark();

    return MaterialApp(
      theme: theme,
      title: 'Fooderlich OA',
      home: MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => TabManager())
      ], child: const Home()),
    );
  }
}
