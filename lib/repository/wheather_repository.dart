import 'package:dio/dio.dart';
import 'package:pet_for_geekstudio/model%20/wheather_model.dart';
import 'dart:developer' as developer;

class WeatherRepository {
  final String apiKey = "8733598ad9a14dfa91491926240804";
  final String urlApi = "https://api.weatherapi.com/v1/current.json";

  Future<WheatherModel> getWeather(String cityName) async {
    try {
      final res = await Dio().get(
        urlApi,
        queryParameters: {
          'key': apiKey,
          'q': cityName,
          'aqi': 'no',
        },
      );

      Map<String, dynamic> jsonData = res.data;
      final weatherModel = WheatherModel.fromJson(jsonData);

      developer.log('Weather data fetched: $weatherModel');
      print('Weather data fetched: $weatherModel');

      return weatherModel;
    } catch (e) {
      developer.log('Error fetching weather data: $e');
      rethrow;
    }
  }
}
