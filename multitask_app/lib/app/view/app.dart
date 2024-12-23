import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:multitask_app/counter/counter.dart';
import 'package:multitask_app/l10n/l10n.dart';

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CounterPage(),
    ),
    GoRoute(
      path: '/counter',
      builder: (context, state) => const CounterPage(),
    ),
    // GoRoute(
    //   path: '/weather',
    //   builder: (context, state) => const WeatherPage(),
    // )
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _router,
    );
  }
}
