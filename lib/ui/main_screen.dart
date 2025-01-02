// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:multitask_fe/routing/routes.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<CustomBottomNavBarItem> tabs = [
    CustomBottomNavBarItem(
      initialLocation: Routes.home,
      icon: Icon(Icons.home),
      activeIcon: Icon(Icons.home),
      label: 'Home',
    ),
    CustomBottomNavBarItem(
      initialLocation: Routes.itemBar2,
      icon: Icon(Icons.business),
      activeIcon: Icon(Icons.business),
      label: 'Business',
    ),
    CustomBottomNavBarItem(
      initialLocation: Routes.itemBar3,
      icon: Icon(Icons.school),
      activeIcon: Icon(Icons.school),
      label: 'School',
    ),
    CustomBottomNavBarItem(
        initialLocation: Routes.settings,
        icon: Icon(Icons.settings),
        activeIcon: Icon(Icons.settings),
        label: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tabs[_selectedIndex].label ?? ''),
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: tabs
            .map((tab) => BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.tertiary,
                  icon: tab.icon,
                  activeIcon: tab.activeIcon,
                  label: tab.label,
                ))
            .toList(),
        currentIndex: _selectedIndex,
        onTap: (index) {
          _onItemTapped(index);
        },
      ),
    );
  }

  void _onItemTapped(int index) {
    if (index == _selectedIndex) return;
    GoRouter router = GoRouter.of(context);
    String location = tabs[index].initialLocation;
    setState(() {
      _selectedIndex = index;
    });
    if (index == 3) {
      //if settings
      context.push(location);
    } else {
      router.go(location);
    }
  }
}
