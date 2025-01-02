import 'package:flutter/material.dart';

class CustomBottomNavBarItem extends BottomNavigationBarItem {
  final String initialLocation;
  const CustomBottomNavBarItem(
      {required this.initialLocation,
      required super.icon,
      super.label,
      Widget? activeIcon})
      : super(activeIcon: activeIcon ?? icon);
}

class Routes {
  Routes._();

  static const splash = '/';
  static const mainscreen = '/mainscreen';
  static const home = '/home';
  static const itemBar2 = '/itemBar2';
  static const itemBar3 = '/itemBar3';
  static const settings = '/settings';
}
