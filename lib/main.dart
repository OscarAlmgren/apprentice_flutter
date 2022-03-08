import 'package:apprentice_flutter/models/grocery_manager.dart';
import 'package:apprentice_flutter/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';

import 'fooderlich_theme.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatefulWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  State<Fooderlich> createState() => _FooderlichState();
}

class _FooderlichState extends State<Fooderlich> {
  final _groceryManager = GroceryManager();
  final _profileManager = ProfileManager();
  final _appStateManager = AppStateManager();
  late AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter(
      appStateManager: _appStateManager,
      groceryManager: _groceryManager,
      profileManager: _profileManager,
    );
  }

  @override // alla stateless widgets måste override:a build()
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => _groceryManager),
        ChangeNotifierProvider(create: (context) => _profileManager),
        ChangeNotifierProvider(create: (context) => _appStateManager),
      ],
      child: Consumer<ProfileManager>(
        builder: (context, profileManager, child) {
          ThemeData theme;
          if (profileManager.darkMode) {
            theme = FooderlichTheme.dark();
          } else {
            theme = FooderlichTheme.light();
          }
          return MaterialApp(
              theme: theme,
              title: 'Fooderlich',
              // replace with router widget
              home: Router(
                routerDelegate: _appRouter,
                // TODO backbutton dispatch
              ));
        },
      ),
    );

    // return MaterialApp(
    //   theme: theme,
    //   title: 'Fooderlich OA',
    //   home: MultiProvider(providers: [
    //     ChangeNotifierProvider(create: (context) => _profileManager),
    //     ChangeNotifierProvider(create: (context) => _groceryManager),
    //   ], child: const Home()),
    // );
  }
}
