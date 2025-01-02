import 'package:flutter/material.dart';
import 'package:multitask_fe/routing/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:multitask_fe/ui/home/home_page.dart';
import 'package:multitask_fe/ui/main_screen.dart';
import 'package:multitask_fe/ui/settings_screen/settings_page.dart';
import 'package:multitask_fe/ui/splash_screen.dart';
import 'package:multitask_fe/utils/logger.dart';

final _rootNavigationKey = GlobalKey<NavigatorState>();
final _shellNavigationKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigationKey,
  observers: [GoRouterObserver()],
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: '/',
      redirect: (context, state) => Routes.home,
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigationKey,
      path: Routes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    ShellRoute(
      navigatorKey: _shellNavigationKey,
      builder: (context, state, child) {
        return MainScreen(child: child);
      },
      routes: [
        GoRoute(
          parentNavigatorKey: _shellNavigationKey,
          path: Routes.home,
          builder: (context, state) => const HomePage(),
        ),
        // GoRoute(
        //   parentNavigatorKey: _shellNavigationKey,
        //   path: Routes.itemBar2,
        // ),
        // GoRoute(
        //   parentNavigatorKey: _shellNavigationKey,
        //   path: Routes.itemBar3,
        // ),
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigationKey,
      path: Routes.settings,
      builder: (context, state) => const SettingsPage(),
    )
  ],
);

class GoRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    AppLogger.instance.d('Route pushed: ${route.settings.name}');
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    AppLogger.instance.d('Route popped: ${route.settings.name}');
    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    AppLogger.instance.d('Route removed: ${route.settings.name}');
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    AppLogger.instance.d(
        'Route replaced: ${oldRoute?.settings.name} -> ${newRoute?.settings.name}');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }
}
