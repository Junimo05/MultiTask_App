import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multitask_fe/bloc/weather/weather_event.dart';
import 'package:multitask_fe/bloc/weather/weather_state.dart';
import 'package:multitask_fe/data/models/current_weather.dart';
import 'package:multitask_fe/data/repository/weather_repository.dart';
import 'package:multitask_fe/services/location_service.dart';
import 'package:multitask_fe/utils/logger.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final LocationService locationService;
  final WeatherRepository weatherRepository;

  WeatherBloc(this.locationService, this.weatherRepository)
      : super(WeatherState()) {
    on<FetchCurrentWeather>(_onFetchCurrentWeather);
    on<RefreshCurrentWeather>(_onRefreshCurrentWeather);
  }

  Future<void> _onFetchCurrentWeather(
      FetchCurrentWeather event, Emitter<WeatherState> emit) async {
    emit(state.copyWith(status: WeatherStatus.loading));
    try {
      final location = await locationService.getCurrentLocation();
      AppLogger.instance.d('Location: $location');
      final timezone = await locationService.getTimeZone(location);
      AppLogger.instance.d('Timezone: $timezone');
      final currentWeather =
          await weatherRepository.getCurrentWeather(location, timezone);
      AppLogger.instance.d('CurrentWeather: $currentWeather');
      emit(state.copyWith(
        status: WeatherStatus.success,
        currentWeather: currentWeather,
      ));
    } catch (e) {
      emit(state.copyWith(status: WeatherStatus.failure));
      AppLogger.instance.e(e);
    }
  }

  Future<void> _onRefreshCurrentWeather(
      RefreshCurrentWeather event, Emitter<WeatherState> emit) async {
    if (!state.status.isSuccess) return;
    if (state.currentWeather == CurrentWeather.empty) return;
    try {
      final location = await locationService.getCurrentLocation();
      final timezone = await locationService.getTimeZone(location);
      final currentWeather =
          await weatherRepository.getCurrentWeather(location, timezone);
      emit(state.copyWith(
        status: WeatherStatus.success,
        currentWeather: currentWeather,
      ));
    } catch (e) {
      emit(state.copyWith(status: WeatherStatus.failure));
      AppLogger.instance.e(e);
    }
  }
}
