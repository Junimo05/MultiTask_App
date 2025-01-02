// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:multitask_fe/bloc/weather/weather_bloc.dart';
import 'package:multitask_fe/data/repository/weather_repository.dart';
import 'package:multitask_fe/routing/router.dart';
import 'package:multitask_fe/services/location_service.dart';
import 'package:multitask_fe/theme/theme.dart';
import 'package:multitask_fe/theme/util.dart';
import 'package:multitask_fe/ui/_common/themeProvider/theme_provider.dart';
import 'package:multitask_fe/utils/shared_prefs.dart';
import 'package:provider/provider.dart';

import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs().init();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<WeatherBloc>(
        lazy: true,
        create: (context) => WeatherBloc(
          LocationService(),
          WeatherRepository(),
        ),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode thememode = ThemeMode.system;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Patrick Hand", "Kings");

    MaterialTheme theme = MaterialTheme(textTheme);

    return ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider(),
      child: Builder(
        builder: (BuildContext context) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp.router(
            title: 'Multitask',
            theme: theme.light(),
            darkTheme: theme.dark(),
            themeMode: themeProvider.themeMode,
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            routerConfig: router,
          );
        },
      ),
    );
  }
}
