import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:multitask_fe/bloc/weather/weather_bloc.dart';
import 'package:multitask_fe/bloc/weather/weather_event.dart';
import 'package:multitask_fe/bloc/weather/weather_state.dart';
import 'package:multitask_fe/constants/weather.dart';

class WeatherFrame extends StatefulWidget {
  const WeatherFrame({super.key});

  @override
  State<WeatherFrame> createState() => _WeatherFrameState();
}

class _WeatherFrameState extends State<WeatherFrame> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherBloc>().add(FetchCurrentWeather());
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     children: [
  //       _weatherDisplay(context),
  //     ],
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Center(child: BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        return switch (state.status) {
          WeatherStatus.initinal => const Text('Initial'),
          WeatherStatus.loading => const CircularProgressIndicator(),
          WeatherStatus.success => _weatherDisplay(context),
          WeatherStatus.failure => const Text('Failed to load weather data'),
        };
      },
    ));
  }
}

Widget _buildWeatherInfo(BuildContext context, String label, String value) {
  return Container(
    constraints: BoxConstraints(
      minWidth: 50,
      maxWidth: 200,
    ),
    padding: const EdgeInsets.symmetric(vertical: 1.0),
    decoration: BoxDecoration(
      border:
          Border.all(color: Theme.of(context).colorScheme.onPrimary, width: 2),
      color: Theme.of(context).colorScheme.primary,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(label,
            style: TextStyle(
                fontSize: 16, color: Theme.of(context).colorScheme.onPrimary)),
        Text(value,
            style: TextStyle(
                fontSize: 16, color: Theme.of(context).colorScheme.onPrimary)),
      ],
    ),
  );
}

Widget _weatherDisplay(BuildContext context) {
  // Dummy data for demonstration purposes
  final weatherData = {
    'condition': 'Sunny',
    'temperature': '25°C',
    "weatherCode": "0",
    'humidity': '60%',
  };

  return Container(
    constraints: BoxConstraints(
      minHeight: 0,
      maxHeight: double.infinity,
    ),
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.all(8.0), // Optional: Add some padding
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Iconify(
              weatherCodeToIcon(weatherData['weatherCode']!, true),
              size: 100,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            SizedBox(width: 16),
            Text(
              weatherData['condition']!,
              style: TextStyle(
                  fontSize: 24, color: Theme.of(context).colorScheme.onSurface),
            ),
          ],
        ),
        SizedBox(width: 16),
        SizedBox(
          width: 200,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                childAspectRatio: 1.5, // Adjust the aspect ratio as needed
              ),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return _buildWeatherInfo(
                      context, 'Temperature', weatherData['temperature']!);
                } else {
                  return _buildWeatherInfo(
                      context, 'Humidity', weatherData['humidity']!);
                }
              }),
        ),
      ],
    ),
  );
}
