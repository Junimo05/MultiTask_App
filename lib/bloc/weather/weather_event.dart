import 'package:equatable/equatable.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class FetchCurrentWeather extends WeatherEvent {}

class RefreshCurrentWeather extends WeatherEvent {}
