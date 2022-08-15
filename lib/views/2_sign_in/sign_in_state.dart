abstract class SignInState {
  const SignInState();
}

class SignInInitial extends SignInState {
  const SignInInitial();
}

class SignInLoading extends SignInState {
  const SignInLoading();
}

class SignInComplete extends SignInState {
  const SignInComplete();
}

class ChangeObsecureText extends SignInState {
  bool isObsecureText;
  ChangeObsecureText(this.isObsecureText);
}

class ContinueButton extends SignInState {
  bool continueButton;
  ContinueButton(this.continueButton);
}
