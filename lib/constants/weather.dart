import 'package:iconify_flutter/icons/wi.dart';

class WeatherApi {
  static const String baseUrl = 'https://api.open-meteo.com/v1/forecast';
  static const String latitude = 'latitude';
  static const String longitude = 'longitude';

  //current Params
  static const String temperature2m = 'temperature_2m';
  static const String relativeHumidity2m = 'relative_humidity_2m';
  static const String apparentTemperature = 'apparent_temperature';
  static const String isDay = 'is_day';
  static const String precipitation = 'precipitation';
  static const String rain = 'rain';
  static const String showers = 'showers';
  static const String snowfall = 'snowfall';
  static const String weatherCode = 'weather_code';
  static const String cloudCover = 'cloud_cover';
  static const String pressureMsl = 'pressure_msl';
  static const String surfacePressure = 'surface_pressure';
  static const String windSpeed10m = 'wind_speed_10m';
  static const String windDirection10m = 'wind_direction_10m';
  static const String windGusts10m = 'wind_gusts_10m';

  static final Map<String, String> currentParams = {
    temperature2m: 'temperature_2m',
    relativeHumidity2m: 'relative_humidity_2m',
    apparentTemperature: 'apparent_temperature',
    isDay: 'is_day',
    precipitation: 'precipitation',
    rain: 'rain',
    showers: 'showers',
    snowfall: 'snowfall',
    weatherCode: 'weather_code',
    cloudCover: 'cloud_cover',
    pressureMsl: 'pressure_msl',
    surfacePressure: 'surface_pressure',
    windSpeed10m: 'wind_speed_10m',
    windDirection10m: 'wind_direction_10m',
    windGusts10m: 'wind_gusts_10m'
  };
}

String weatherCodeToIcon(String code, bool isDay) {
  const dayIcons = {
    "0": Wi.day_sunny,
    "1": Wi.day_sunny_overcast,
    "2": Wi.day_cloudy,
    "3": Wi.day_cloudy,
    "45": Wi.fog,
    "48": Wi.fog,
    "51": Wi.sprinkle,
    "53": Wi.sprinkle,
    "55": Wi.sprinkle,
    "56": Wi.sleet,
    "57": Wi.sleet,
    "61": Wi.rain,
    "63": Wi.rain,
    "65": Wi.rain,
    "66": Wi.sleet,
    "67": Wi.sleet,
    "71": Wi.snow,
    "73": Wi.snow,
    "75": Wi.snow,
    "77": Wi.snow,
    "80": Wi.showers,
    "81": Wi.showers,
    "82": Wi.showers,
    "85": Wi.snow,
    "86": Wi.snow,
    "95": Wi.thunderstorm,
    "96": Wi.thunderstorm,
    "99": Wi.thunderstorm
  };

  const nightIcons = {
    "0": Wi.night_clear,
    "1": Wi.night_alt_partly_cloudy,
    "2": Wi.night_alt_cloudy,
    "3": Wi.night_alt_cloudy,
    "45": Wi.night_fog,
    "48": Wi.night_fog,
    "51": Wi.sprinkle,
    "53": Wi.sprinkle,
    "55": Wi.sprinkle,
    "56": Wi.night_sleet,
    "57": Wi.night_sleet,
    "61": Wi.night_alt_rain,
    "63": Wi.night_alt_rain,
    "65": Wi.night_alt_rain,
    "66": Wi.night_sleet,
    "67": Wi.night_sleet,
    "71": Wi.night_alt_snow,
    "73": Wi.night_alt_snow,
    "75": Wi.night_alt_snow,
    "77": Wi.night_alt_snow,
    "80": Wi.night_alt_showers,
    "81": Wi.night_alt_showers,
    "82": Wi.night_alt_showers,
    "85": Wi.night_alt_snow,
    "86": Wi.night_alt_snow,
    "95": Wi.night_alt_thunderstorm,
    "96": Wi.night_alt_thunderstorm,
    "99": Wi.night_alt_thunderstorm
  };

  final weatherIcons = isDay ? dayIcons : nightIcons;
  return weatherIcons[code] ?? Wi.na;
}


//       0: "Clear sky",
//       1: "Mainly clear",
//       2: "Partly cloudy",
//       3: "Overcast",
//       45: "Fog",
//       48: "Depositing rime fog",
//       51: "Drizzle: Light",
//       53: "Drizzle: Moderate",
//       55: "Drizzle: Dense intensity",
//       56: "Freezing Drizzle: Light",
//       57: "Freezing Drizzle: Dense intensity",
//       61: "Rain: Slight",
//       63: "Rain: Moderate",
//       65: "Rain: Heavy intensity",
//       66: "Freezing Rain: Light",
//       67: "Freezing Rain: Heavy intensity",
//       71: "Snow fall: Slight",
//       73: "Snow fall: Moderate",
//       75: "Snow fall: Heavy intensity",
//       77: "Snow grains",
//       80: "Rain showers: Slight",
//       81: "Rain showers: Moderate",
//       82: "Rain showers: Violent",
//       85: "Snow showers: Slight",
//       86: "Snow showers: Heavy",
//       95: "Thunderstorm: Slight or moderate",
//       96: "Thunderstorm with slight hail",
//       99: "Thunderstorm with heavy hail"