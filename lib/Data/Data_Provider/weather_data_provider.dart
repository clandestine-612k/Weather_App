import 'package:http/http.dart' as http;
import 'package:weather_app/secrests.dart';

class WeatherDataProvider {
  Future<String> getCurrentWeather(String cityName) async {
    try {
      final res = await http.get(
        Uri.parse(
          'https://api.openweathermap.org/data/2.5/forecast?q=$cityName&APPID=$openWeatherAPIkey',
        ),
      );
      return res.body;
    } catch (e) {
      throw e.toString();
    }
  }
}
