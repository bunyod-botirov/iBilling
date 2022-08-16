import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/views/3_sign_up/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(const SignUpInitial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isObsecureText = true;
  bool continueButton = false;

  void changeIsObsecure() {
    isObsecureText = !isObsecureText;
    emit(ChangeObsecureText(isObsecureText));
  }

  void continueButtonPressed() {
    if (nameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      continueButton = true;
    } else {
      continueButton = false;
    }
    emit(ContinueButton(continueButton));
  }
}
