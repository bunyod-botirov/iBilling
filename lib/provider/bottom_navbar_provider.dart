import 'package:flutter/material.dart';
import 'package:ibilling/views/contracts_page.dart';
import 'package:ibilling/views/history_page.dart';
import 'package:ibilling/views/new_page.dart';
import 'package:ibilling/views/profile_page.dart';
import 'package:ibilling/views/saved_page.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int currentPage = 0;
  final List<Widget> pages = [
    const ContractsPage(),
    const HistoryPage(),
    const NewPage(),
    const SavedPage(),
    const ProfilePage(),
  ];

  void changePage(int index) {
    currentPage = index;
    notifyListeners();
  }
}
