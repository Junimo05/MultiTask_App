// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherState _$WeatherStateFromJson(Map<String, dynamic> json) => WeatherState(
      status: $enumDecodeNullable(_$WeatherStatusEnumMap, json['status']) ??
          WeatherStatus.initinal,
      currentWeather: json['currentWeather'] == null
          ? null
          : CurrentWeather.fromJson(
              json['currentWeather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherStateToJson(WeatherState instance) =>
    <String, dynamic>{
      'status': _$WeatherStatusEnumMap[instance.status]!,
      'currentWeather': instance.currentWeather,
    };

const _$WeatherStatusEnumMap = {
  WeatherStatus.initinal: 'initinal',
  WeatherStatus.loading: 'loading',
  WeatherStatus.success: 'success',
  WeatherStatus.failure: 'failure',
};
