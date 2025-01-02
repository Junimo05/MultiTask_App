// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) =>
    CurrentWeather(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      generationTimeMs: (json['generationTimeMs'] as num).toDouble(),
      utcOffsetSeconds: (json['utcOffsetSeconds'] as num).toInt(),
      timezone: json['timezone'] as String,
      timezoneAbbreviation: json['timezoneAbbreviation'] as String,
      elevation: (json['elevation'] as num).toDouble(),
      currentUnits:
          CurrentUnits.fromJson(json['currentUnits'] as Map<String, dynamic>),
      current: CurrentData.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentWeatherToJson(CurrentWeather instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationTimeMs': instance.generationTimeMs,
      'utcOffsetSeconds': instance.utcOffsetSeconds,
      'timezone': instance.timezone,
      'timezoneAbbreviation': instance.timezoneAbbreviation,
      'elevation': instance.elevation,
      'currentUnits': instance.currentUnits,
      'current': instance.current,
    };

CurrentUnits _$CurrentUnitsFromJson(Map<String, dynamic> json) => CurrentUnits(
      time: json['time'] as String? ?? '',
      interval: json['interval'] as String? ?? '',
      temperature2m: json['temperature2m'] as String? ?? '',
      relativeHumidity2m: json['relativeHumidity2m'] as String? ?? '',
      apparentTemperature: json['apparentTemperature'] as String? ?? '',
      isDay: json['isDay'] as String? ?? '',
      precipitation: json['precipitation'] as String? ?? '',
      rain: json['rain'] as String? ?? '',
      showers: json['showers'] as String? ?? '',
      snowfall: json['snowfall'] as String? ?? '',
      weatherCode: json['weatherCode'] as String? ?? '',
      cloudCover: json['cloudCover'] as String? ?? '',
      pressureMsl: json['pressureMsl'] as String? ?? '',
      surfacePressure: json['surfacePressure'] as String? ?? '',
      windSpeed10m: json['windSpeed10m'] as String? ?? '',
      windDirection10m: json['windDirection10m'] as String? ?? '',
      windGusts10m: json['windGusts10m'] as String? ?? '',
    );

Map<String, dynamic> _$CurrentUnitsToJson(CurrentUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
      'temperature2m': instance.temperature2m,
      'relativeHumidity2m': instance.relativeHumidity2m,
      'apparentTemperature': instance.apparentTemperature,
      'isDay': instance.isDay,
      'precipitation': instance.precipitation,
      'rain': instance.rain,
      'showers': instance.showers,
      'snowfall': instance.snowfall,
      'weatherCode': instance.weatherCode,
      'cloudCover': instance.cloudCover,
      'pressureMsl': instance.pressureMsl,
      'surfacePressure': instance.surfacePressure,
      'windSpeed10m': instance.windSpeed10m,
      'windDirection10m': instance.windDirection10m,
      'windGusts10m': instance.windGusts10m,
    };

CurrentData _$CurrentDataFromJson(Map<String, dynamic> json) => CurrentData(
      time: json['time'] as String? ?? '',
      interval: (json['interval'] as num?)?.toInt() ?? 0,
      temperature2m: (json['temperature2m'] as num?)?.toDouble() ?? 0.0,
      relativeHumidity2m: (json['relativeHumidity2m'] as num?)?.toInt() ?? 0,
      isDay: (json['isDay'] as num?)?.toInt() ?? 0,
      weatherCode: (json['weatherCode'] as num?)?.toInt() ?? 0,
      windSpeed10m: (json['windSpeed10m'] as num?)?.toDouble() ?? 0.0,
      windDirection10m: (json['windDirection10m'] as num?)?.toInt() ?? 0,
      windGusts10m: (json['windGusts10m'] as num?)?.toDouble() ?? 0.0,
      apparentTemperature:
          (json['apparentTemperature'] as num?)?.toDouble() ?? 0.0,
      precipitation: (json['precipitation'] as num?)?.toDouble() ?? 0.0,
      rain: (json['rain'] as num?)?.toDouble() ?? 0.0,
      showers: (json['showers'] as num?)?.toDouble() ?? 0.0,
      snowfall: (json['snowfall'] as num?)?.toDouble() ?? 0.0,
      cloudCover: (json['cloudCover'] as num?)?.toInt() ?? 0,
      pressureMsl: (json['pressureMsl'] as num?)?.toDouble() ?? 0.0,
      surfacePressure: (json['surfacePressure'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$CurrentDataToJson(CurrentData instance) =>
    <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
      'temperature2m': instance.temperature2m,
      'relativeHumidity2m': instance.relativeHumidity2m,
      'apparentTemperature': instance.apparentTemperature,
      'isDay': instance.isDay,
      'precipitation': instance.precipitation,
      'rain': instance.rain,
      'showers': instance.showers,
      'snowfall': instance.snowfall,
      'weatherCode': instance.weatherCode,
      'cloudCover': instance.cloudCover,
      'pressureMsl': instance.pressureMsl,
      'surfacePressure': instance.surfacePressure,
      'windSpeed10m': instance.windSpeed10m,
      'windDirection10m': instance.windDirection10m,
      'windGusts10m': instance.windGusts10m,
    };
