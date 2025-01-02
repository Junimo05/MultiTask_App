import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:multitask_fe/data/models/current_weather.dart';

part 'weather_state.g.dart';

enum WeatherStatus { initinal, loading, success, failure }

extension WeatherStatusX on WeatherStatus {
  bool get isInitial => this == WeatherStatus.initinal;
  bool get isLoading => this == WeatherStatus.loading;
  bool get isSuccess => this == WeatherStatus.success;
  bool get isFailure => this == WeatherStatus.failure;
}

@JsonSerializable()
final class WeatherState extends Equatable {
  // ignore: prefer_const_constructors_in_immutables
  WeatherState({
    this.status = WeatherStatus.initinal,
    CurrentWeather? currentWeather,
  }) : currentWeather = currentWeather ?? CurrentWeather.empty;

  final WeatherStatus status;
  final CurrentWeather currentWeather;

  WeatherState copyWith({
    WeatherStatus? status,
    CurrentWeather? currentWeather,
  }) {
    return WeatherState(
      status: status ?? this.status,
      currentWeather: currentWeather ?? this.currentWeather,
    );
  }

  @override
  List<Object?> get props => [status, currentWeather];
}
