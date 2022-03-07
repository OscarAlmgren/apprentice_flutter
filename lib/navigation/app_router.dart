import 'package:apprentice_flutter/models/app_state_manager.dart';
import 'package:apprentice_flutter/models/grocery_manager.dart';
import 'package:apprentice_flutter/models/profile_manager.dart';
import 'package:flutter/material.dart';

class AppRouter extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final AppStateManager appStateManager;
  final GroceryManager groceryManager;
  final ProfileManager profileManager;

  AppRouter({
    required this.appStateManager,
    required this.groceryManager,
    required this.profileManager,
  }) : navigatorKey = GlobalKey<NavigatorState>() {
    // add listeners
  }

  // dispose listeners

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: const [
        // TODO: Add SplashScreen
        // TODO: Add LoginScreen
        // TODO: Add OnboardingScreen
        // TODO: Add Home
        // TODO: Create new item
        // TODO: Select GroceryItemScreen
        // TODO: Add Profile Screen
        // TODO: Add WebView Screen
      ],
    );
  }

  @override
  Future<void> setNewRoutePath(configuration) async => null;
}
