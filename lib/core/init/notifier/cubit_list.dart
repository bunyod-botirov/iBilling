import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/views/bottom_navbar/bottom_navbar_cubit.dart';

class ApplicationCubit {
  static final ApplicationCubit _instance = ApplicationCubit._init();
  static ApplicationCubit get instance => _instance;
  ApplicationCubit._init();

  List<BlocProvider> dependItems = [
    BlocProvider<BottomNavBarCubit>(
      create: (BuildContext context) => BottomNavBarCubit(),
    ),
    BlocProvider<BottomNavBarCubit>(
      create: (BuildContext context) => BottomNavBarCubit(),
    ),
  ];
}
