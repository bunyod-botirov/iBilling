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
  final bool isObsecureText;
  ChangeObsecureText(this.isObsecureText);
}

class ContinueButton extends SignInState {
  final bool continueButton;
  ContinueButton(this.continueButton);
}
