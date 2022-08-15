abstract class IntroState {
  const IntroState();
}

class IntroInitial extends IntroState {
  const IntroInitial();
}

class IntroLoading extends IntroState {
  const IntroLoading();
}

class IntroComplete extends IntroState {
  const IntroComplete();
}

class ChangeTabPageIndex extends IntroState {
  int index;
  ChangeTabPageIndex(this.index);
}
