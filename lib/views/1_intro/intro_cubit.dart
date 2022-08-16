import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/views/1_intro/intro_state.dart';

class IntroCubit extends Cubit<IntroState> {
  IntroCubit() : super(const IntroInitial());

  int tabPageIndex = 0;

  void changeTab(int index) {
    tabPageIndex = index;
    emit(ChangeTabPageIndex(index));
  }
}
