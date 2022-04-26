import 'package:flutter/material.dart';
import 'package:ibilling/screens/bottom_navbar/bottom_navbar_view.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    final Object? args = settings.arguments;
    switch (settings.name) {
      case "/bottom_navbar":
        return MaterialPageRoute(
          builder: (context) => const BottomNavBar(),
        );
    }

    return null;
  }
}
