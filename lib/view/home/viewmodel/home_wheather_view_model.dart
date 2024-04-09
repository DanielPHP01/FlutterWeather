import 'package:flutter/cupertino.dart';
import 'package:pet_for_geekstudio/model%20/wheather_model.dart';
import 'package:pet_for_geekstudio/service/WheatherService.dart';

class HomeWheatherViewModel with ChangeNotifier {
  final WeatherService _wheatherService = WeatherService();

  WheatherModel? get wheatherModel => _wheatherService.weather;

  Future<void> fetchWheather(String? cityName) async {
    await _wheatherService.fetchWeather(cityName ?? "Bishkek");
    notifyListeners();
  }
}