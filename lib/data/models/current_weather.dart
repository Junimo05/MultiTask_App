import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'current_weather.g.dart';

@JsonSerializable()
class CurrentWeather extends Equatable {
  const CurrentWeather({
    required this.latitude,
    required this.longitude,
    required this.generationTimeMs,
    required this.utcOffsetSeconds,
    required this.timezone,
    required this.timezoneAbbreviation,
    required this.elevation,
    required this.currentUnits,
    required this.current,
  });

  final double latitude;
  final double longitude;
  final double generationTimeMs;
  final int utcOffsetSeconds;
  final String timezone;
  final String timezoneAbbreviation;
  final double elevation;
  final CurrentUnits currentUnits;
  final CurrentData current;

  static final empty = CurrentWeather(
    latitude: 0.0,
    longitude: 0.0,
    generationTimeMs: 0.0,
    utcOffsetSeconds: 0,
    timezone: '',
    timezoneAbbreviation: '',
    elevation: 0.0,
    currentUnits: CurrentUnits(),
    current: CurrentData(),
  );

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentWeatherToJson(this);

  @override
  List<Object?> get props => [
        latitude,
        longitude,
        generationTimeMs,
        utcOffsetSeconds,
        timezone,
        timezoneAbbreviation,
        elevation,
        currentUnits,
        current,
      ];
}

@JsonSerializable()
class CurrentUnits extends Equatable {
  final String time;
  final String interval;
  final String temperature2m;
  final String relativeHumidity2m;
  final String apparentTemperature;
  final String isDay;
  final String precipitation;
  final String rain;
  final String showers;
  final String snowfall;
  final String weatherCode;
  final String cloudCover;
  final String pressureMsl;
  final String surfacePressure;
  final String windSpeed10m;
  final String windDirection10m;
  final String windGusts10m;

  const CurrentUnits({
    //not required
    this.time = '',
    this.interval = '',
    this.temperature2m = '',
    this.relativeHumidity2m = '',
    this.apparentTemperature = '',
    this.isDay = '',
    this.precipitation = '',
    this.rain = '',
    this.showers = '',
    this.snowfall = '',
    this.weatherCode = '',
    this.cloudCover = '',
    this.pressureMsl = '',
    this.surfacePressure = '',
    this.windSpeed10m = '',
    this.windDirection10m = '',
    this.windGusts10m = '',
  });

  factory CurrentUnits.fromJson(Map<String, dynamic> json) =>
      _$CurrentUnitsFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentUnitsToJson(this);

  @override
  List<Object?> get props => [
        time,
        interval,
        temperature2m,
        relativeHumidity2m,
        apparentTemperature,
        isDay,
        precipitation,
        rain,
        showers,
        snowfall,
        weatherCode,
        cloudCover,
        pressureMsl,
        surfacePressure,
        windSpeed10m,
        windDirection10m,
        windGusts10m,
      ];
}

@JsonSerializable()
class CurrentData extends Equatable {
  const CurrentData({
    this.time = '',
    this.interval = 0,
    this.temperature2m = 0.0,
    this.relativeHumidity2m = 0,
    this.isDay = 0,
    this.weatherCode = 0,
    this.windSpeed10m = 0.0,
    this.windDirection10m = 0,
    this.windGusts10m = 0.0,
    this.apparentTemperature = 0.0,
    this.precipitation = 0.0,
    this.rain = 0.0,
    this.showers = 0.0,
    this.snowfall = 0.0,
    this.cloudCover = 0,
    this.pressureMsl = 0.0,
    this.surfacePressure = 0.0,
  });

  final String time;
  final int interval;
  final double temperature2m;
  final int relativeHumidity2m;
  final double apparentTemperature;
  final int isDay;
  final double precipitation;
  final double rain;
  final double showers;
  final double snowfall;
  final int weatherCode;
  final int cloudCover;
  final double pressureMsl;
  final double surfacePressure;
  final double windSpeed10m;
  final int windDirection10m;
  final double windGusts10m;

  factory CurrentData.fromJson(Map<String, dynamic> json) =>
      _$CurrentDataFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentDataToJson(this);

  @override
  List<Object?> get props => [
        time,
        interval,
        temperature2m,
        relativeHumidity2m,
        apparentTemperature,
        isDay,
        precipitation,
        rain,
        showers,
        snowfall,
        weatherCode,
        cloudCover,
        pressureMsl,
        surfacePressure,
        windSpeed10m,
        windDirection10m,
        windGusts10m,
      ];
}
