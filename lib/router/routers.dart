import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/navigation/navigation_const.dart';
import 'package:ibilling/views/bottom_navbar/bottom_navbar_view.dart';
import 'package:ibilling/views/invoice_view.dart';
import 'package:ibilling/views/new_contract_view.dart';
import 'package:ibilling/views/new_page.dart';
import 'package:ibilling/views/page_not_found.dart';
import 'package:ibilling/views/single_page.dart';

class Routes {
  static final Routes _instance = Routes._init();
  static Routes get instance => _instance;
  Routes._init();

  Route onGenerateRoute(RouteSettings settings) {
    final Object? args = settings.arguments;

    switch (settings.name) {
      case NavigationConst.BOTTOM_NAV_BAR_VIEW:
        return easyNavigate(const BottomNavBar());
      case NavigationConst.SINGLE_VIEW:
        return easyNavigate(const SingleView());
      case NavigationConst.NEW_CONTRACT_VIEW:
        return easyNavigate(const NewContractView());
      case NavigationConst.INVOICE_VIEW:
        return easyNavigate(const InvoiceView());
      case NavigationConst.NEW_PAGE:
        return easyNavigate(const NewPage());

      default:
        return easyNavigate(const PageNotFound());
    }
  }

  MaterialPageRoute easyNavigate(Widget page) {
    return MaterialPageRoute(builder: (BuildContext context) => page);
  }
}
