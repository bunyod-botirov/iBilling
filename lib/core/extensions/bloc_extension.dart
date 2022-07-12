import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/views/bottom_navbar/bottom_navbar_cubit.dart';

extension CubitExtension on BuildContext {
  BottomNavBarCubit get bottomNavBarCT =>
      BlocProvider.of<BottomNavBarCubit>(this, listen: false);
  BottomNavBarCubit get bottomNavBarCTStream =>
      BlocProvider.of<BottomNavBarCubit>(this, listen: true);
}
