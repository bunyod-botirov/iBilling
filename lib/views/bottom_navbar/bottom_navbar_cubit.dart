import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/views/bottom_navbar/bottom_navbar_state.dart';
import 'package:ibilling/views/contracts/contracts_view.dart';
import 'package:ibilling/views/history_view.dart';
import 'package:ibilling/views/invoice_view.dart';
import 'package:ibilling/views/new_contract_view.dart';
import 'package:ibilling/views/new_page.dart';
import 'package:ibilling/views/profile_view.dart';
import 'package:ibilling/views/saved_view.dart';
import 'package:ibilling/views/single_page.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(const BottomNavBarInitial());

  int currentPage = 0;
  int bottomIndex = 0;
  final List pages = [
    const ContractsView(),
    const HistoryView(),
    const SizedBox(),
    const SavedView(),
    const ProfileView(),
    const SingleView(),
    const NewContractView(),
    const InvoiceView(),
  ];

  void changePage(int index, BuildContext context) {
    if (index == 2) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const NewPage();
        },
      );
    } else if (index == 5) {
      currentPage = index;
      emit(BottomNavBarChangePage(currentPage));
    } else if (index == 6) {
      currentPage = index;
      bottomIndex = 2;
      emit(BottomNavBarChangePage(currentPage));
    } else if (index == 7) {
      currentPage = index;
      bottomIndex = 2;
      emit(BottomNavBarChangePage(currentPage));
    } else {
      currentPage = index;
      bottomIndex = index;
      emit(BottomNavBarChangePage(currentPage));
    }
  }
}
