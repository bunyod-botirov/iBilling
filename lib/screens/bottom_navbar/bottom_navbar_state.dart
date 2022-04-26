abstract class BottomNavBarState {
  const BottomNavBarState();
}

class BottomNavBarInitial extends BottomNavBarState {
  const BottomNavBarInitial();
}

class BottomNavBarChangePage extends BottomNavBarState {
  final int currentPage;
  const BottomNavBarChangePage(this.currentPage);
}
