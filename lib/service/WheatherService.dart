import 'dart:developer';

import 'package:pet_for_geekstudio/model%20/wheather_model.dart';

import '../repository/wheather_repository.dart';


class WeatherService {
  final WeatherRepository _weatherRepository = WeatherRepository();
  WheatherModel? _weatherModel;

  WheatherModel? get weather => _weatherModel;

  Future<void> fetchWeather(String cityName) async {
    try {
      _weatherModel = await _weatherRepository.getWeather(cityName);
    } catch(e, s) {
      log('Error fetching weather: $e, $s');
    }
  }
}
