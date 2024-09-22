import 'dart:convert';

import 'package:weather_app/Data/Data_Provider/weather_data_provider.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherRepository {
  final WeatherDataProvider weatherDataProvider;
  WeatherRepository(this.weatherDataProvider);
  Future<WeatherModel> getCurrentWeather() async {
    try {
      String cityName = 'Kolkata';
      final WeatheerData = weatherDataProvider.getCurrentWeather(cityName);
      final data = jsonDecode(WeatheerData as String);

      if (data['cod'] != '200') {
        throw 'An unexpected error occured';
      }
      return WeatherModel.fromJson(WeatheerData as String);
      //(data['list'][0]['main']['temp']);
    } catch (e) {
      throw e.toString();
    }
  }
}
