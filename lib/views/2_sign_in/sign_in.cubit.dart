import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/views/2_sign_in/sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(const SignInInitial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isObsecureText = true;
  bool continueButton = false;

  void changeIsObsecure() {
    isObsecureText = !isObsecureText;
    emit(ChangeObsecureText(isObsecureText));
  }

  void continueButtonPressed() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      continueButton = true;
    } else {
      continueButton = false;
    }
    emit(ContinueButton(continueButton));
  }
}
