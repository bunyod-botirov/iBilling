import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/views/1_intro/intro_cubit.dart';
import 'package:ibilling/views/2_sign_in/sign_in.cubit.dart';
import 'package:ibilling/views/3_sign_up/sign_up_cubit.dart';
import 'package:ibilling/views/bottom_navbar/bottom_navbar_cubit.dart';

class ApplicationCubit {
  static final ApplicationCubit _instance = ApplicationCubit._init();
  static ApplicationCubit get instance => _instance;
  ApplicationCubit._init();

  List<BlocProvider> dependItems = [
    BlocProvider<BottomNavBarCubit>(
      create: (BuildContext context) => BottomNavBarCubit(),
    ),
    BlocProvider<IntroCubit>(
      create: (BuildContext context) => IntroCubit(),
    ),
    BlocProvider<SignInCubit>(
      create: (BuildContext context) => SignInCubit(),
    ),
    BlocProvider<SignUpCubit>(
      create: (BuildContext context) => SignUpCubit(),
    ),
  ];
}
