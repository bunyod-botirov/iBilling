import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/views/1_intro/intro_cubit.dart';
import 'package:ibilling/views/2_sign_in/sign_in.cubit.dart';
import 'package:ibilling/views/3_sign_up/sign_up_cubit.dart';
import 'package:ibilling/views/bottom_navbar/bottom_navbar_cubit.dart';

extension CubitExtension on BuildContext {
  BottomNavBarCubit get bottomNavBarCT =>
      BlocProvider.of<BottomNavBarCubit>(this, listen: false);
  BottomNavBarCubit get bottomNavBarCTStream =>
      BlocProvider.of<BottomNavBarCubit>(this, listen: true);

  IntroCubit get introCT => BlocProvider.of<IntroCubit>(this, listen: false);
  IntroCubit get introCTStream =>
      BlocProvider.of<IntroCubit>(this, listen: true);

  // Registration
  SignInCubit get signInCT => BlocProvider.of<SignInCubit>(this, listen: false);
  SignInCubit get signInCTStream =>
      BlocProvider.of<SignInCubit>(this, listen: true);

  SignUpCubit get signUpCT => BlocProvider.of<SignUpCubit>(this, listen: false);
  SignUpCubit get signUpCTStream =>
      BlocProvider.of<SignUpCubit>(this, listen: true);
}
