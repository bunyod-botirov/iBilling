import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/views/bottom_navbar/bottom_navbar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(const BottomNavBarInitial());

  int currentPage = 0;
  final List<Widget> pages = [
    // const ContractsPage(),
    // const HistoryPage(),
    // const NewPage(),
    // const SavedPage(),
    // const ProfilePage(),
  ];

  void changePage(int index) {
    currentPage = index;
    emit(BottomNavBarChangePage(currentPage));
  }
}
