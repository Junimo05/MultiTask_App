import 'package:flutter/material.dart';
import 'package:multitask_fe/ui/_common/themeProvider/theme_provider.dart';
import 'package:multitask_fe/ui/home/widgets/weather_frame.dart';
import 'package:multitask_fe/ui/home/widgets/weekcheck_frame.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          WeatherFrame(),
          WeekcheckFrame(),
          Text(
            'Welcome to the Home Page!!!',
            style: TextStyle(
              fontSize: 24,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              themeChanger.changeThemeMode();
            },
            child: Text('Switch Mode'),
          ),
        ],
      ),
    );
  }
}
