import 'package:flutter/material.dart';

class NavigatorService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState.pushNamed(routeName);
  }

  void goBack() {
    navigatorKey.currentState.pop();
  }

  void navigateToHome() {
    return navigatorKey.currentState.popUntil((route) => route.isFirst);
  }
}
