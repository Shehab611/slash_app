part of 'bottom_nav_bar_cubit.dart';


sealed class BottomNavBarState extends Equatable {
  const BottomNavBarState();
}

class BottomNavBarInitial extends BottomNavBarState {
  const BottomNavBarInitial();

  @override
  List<Object> get props => [];
}

class BottomNavBarHomeScreen extends BottomNavBarState {
  const BottomNavBarHomeScreen();

  @override
  List<Object> get props => [];
}

class BottomNavBarSearchScreen extends BottomNavBarState {
  const BottomNavBarSearchScreen();
  @override
  List<Object> get props => [];
}

class BottomNavBarWishListScreen extends BottomNavBarState {
  const BottomNavBarWishListScreen();
  @override
  List<Object> get props => [];
}

class BottomNavBarAccountSettingsScreen extends BottomNavBarState {
  const BottomNavBarAccountSettingsScreen();
  @override
  List<Object> get props => [];
}