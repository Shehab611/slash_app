import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/features/home_page/presentation/views/home_screen.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(const BottomNavBarInitial());

  static BottomNavBarCubit get(context) => BlocProvider.of(context);

  //private variables
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
  ];

  final List<BottomNavigationBarItem> _items = const [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home_filled,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.favorite_border_outlined,
      ),
      label: 'Favourites',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.shopping_cart,
      ),
      label: 'My Cart',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.person_pin,
      ),
      label: 'Profile',
    ),
  ];

  // getters
  List<BottomNavigationBarItem> get items => _items;

  int get currentIndex => _currentIndex;

  Widget get currentScreen => _screens[_currentIndex];

  //setters
  set changeIndex(int index) {
    _currentIndex = index;
    switch (_currentIndex) {
      case 0:
        emit(const BottomNavBarHomeScreen());
      case 1:
        emit(const BottomNavBarSearchScreen());
      case 2:
        emit(const BottomNavBarWishListScreen());
      case 3:
        emit(const BottomNavBarAccountSettingsScreen());
    }
  }
}
