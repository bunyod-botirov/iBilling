abstract class SignUpState {
  const SignUpState();
}

class SignUpInitial extends SignUpState {
  const SignUpInitial();
}

class SignUpLoading extends SignUpState {
  const SignUpLoading();
}

class SignUpComplete extends SignUpState {
  const SignUpComplete();
}

class ChangeObsecureText extends SignUpState {
  bool isObsecureText;
  ChangeObsecureText(this.isObsecureText);
}

class ContinueButton extends SignUpState {
  bool continueButton;
  ContinueButton(this.continueButton);
}
