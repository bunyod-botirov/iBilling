import 'package:flutter/material.dart';
import 'package:ibilling/views/bottom_navbar_view.dart';
import 'package:ibilling/views/invoice_page.dart';
import 'package:ibilling/views/new_contract_page.dart';
import 'package:ibilling/views/single_page.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    final Object? args = settings.arguments;
    switch (settings.name) {
      case "/bottom_navbar":
        return MaterialPageRoute(
          builder: (BuildContext context) => const BottomNavBar(),
        );
      case "/single":
        return MaterialPageRoute(
          builder: (BuildContext context) => const SinglePage(),
        );
      case "/new_contract":
        return MaterialPageRoute(
          builder: (BuildContext context) => const NewContractPage(),
        );
      case "/invoice":
        return MaterialPageRoute(
          builder: (BuildContext context) => const InvoicePage(),
        );
    }

    return null;
  }
}
