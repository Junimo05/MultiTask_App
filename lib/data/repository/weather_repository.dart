import 'dart:convert';

import 'package:geolocator_platform_interface/src/models/position.dart';
import 'package:multitask_fe/data/models/current_weather.dart';
import 'package:http/http.dart' as http;
import 'package:multitask_fe/utils/logger.dart';

class WeatherRepository {
  Future<CurrentWeather> getCurrentWeather(
      Position location, String timezone) async {
    // /https://api.open-meteo.com/v1/forecast?latitude=16.1667&longitude=107.8333&current=temperature_2m,relative_humidity_2m,apparent_temperature,is_day,precipitation,rain,showers,snowfall,weather_code,cloud_cover,pressure_msl,surface_pressure,wind_speed_10m,wind_direction_10m,wind_gusts_10m&timezone=Asia%2FBangkok
    try {
      final response = await http.get(Uri.parse(
          'https://api.open-meteo.com/v1/forecast?latitude=16.1667&longitude=107.8333&current=temperature_2m,relative_humidity_2m,apparent_temperature,is_day,precipitation,rain,showers,snowfall,weather_code,cloud_cover,pressure_msl,surface_pressure,wind_speed_10m,wind_direction_10m,wind_gusts_10m&timezone=Asia%2FBangkok'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return CurrentWeather.fromJson(data);
      } else {
        throw Exception('Failed to load');
      }
    } catch (e) {
      AppLogger.instance.e(e.toString());
      throw Exception('Failed to load weather data');
    }
  }
}
