import 'dart:convert';

class WeatherModel {
  final double currenttemp;
  final String currentsky;
  final double currentPressure;
  final double currentWindSpeed;
  final double currentHumidity;

  WeatherModel({
    required this.currenttemp,
    required this.currentsky,
    required this.currentPressure,
    required this.currentWindSpeed,
    required this.currentHumidity,
  });

  WeatherModel copyWith({
    double? currenttemp,
    String? currentsky,
    double? currentPressure,
    double? currentWindSpeed,
    double? currentHumidity,
  }) {
    return WeatherModel(
      currenttemp: currenttemp ?? this.currenttemp,
      currentsky: currentsky ?? this.currentsky,
      currentPressure: currentPressure ?? this.currentPressure,
      currentWindSpeed: currentWindSpeed ?? this.currentWindSpeed,
      currentHumidity: currentHumidity ?? this.currentHumidity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'currenttemp': currenttemp,
      'currentsky': currentsky,
      'currentPressure': currentPressure,
      'currentWindSpeed': currentWindSpeed,
      'currentHumidity': currentHumidity,
    };
  }

  factory WeatherModel.fromMap(Map<String, dynamic> map) {
    final currentWeatherData = map['list'][0];
    // final currenttemp = currentWeatherData['main']['temp'];
    // final currentsky = currentWeatherData['weather'][0]['main'];
    // final currentPressure =
    //     currentWeatherData['main']['pressure'].toString();
    // final currentWindSpeed =
    //     currentWeatherData['wind']['speed'].toString();
    // final currentHumidity =
    //     currentWeatherData['main']['humidity'].toString();
    return WeatherModel(
      currenttemp: currentWeatherData['main']['temp'],
      currentsky: currentWeatherData['weather'][0]['main'],
      currentPressure: currentWeatherData['main']['pressure'],
      currentWindSpeed: currentWeatherData['wind']['speed'],
      currentHumidity: currentWeatherData['main']['humidity'],
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherModel.fromJson(String source) =>
      WeatherModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'WeatherModel(currenttemp: $currenttemp, currentsky: $currentsky, currentPressure: $currentPressure, currentWindSpeed: $currentWindSpeed, currentHumidity: $currentHumidity';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WeatherModel &&
        other.currenttemp == currenttemp &&
        other.currentsky == currentsky &&
        other.currentPressure == currentPressure &&
        other.currentWindSpeed == currentWindSpeed &&
        other.currentHumidity == currentHumidity;
  }

  @override
  int get hashCode {
    return currenttemp.hashCode ^
        currentsky.hashCode ^
        currentPressure.hashCode ^
        currentWindSpeed.hashCode ^
        currentHumidity.hashCode;
  }
}
