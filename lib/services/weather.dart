// weather_api.dart

import '../services/network.dart';

class WeatherApi {
  static Future<dynamic> getCityWeather(String cityName) async {
    final String weatherUrl =
        "https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=5a18fc6e52dc7342ee016a20e95a106c&units=metric";
    NetworkHelper networkHelper = NetworkHelper('$weatherUrl');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  static Future<dynamic> getLocationWeather() async {
    final String weatherUrl =
        "https://api.openweathermap.org/data/2.5/weather?lat=88&lon=88&appid=5a18fc6e52dc7342ee016a20e95a106c&units=metric";
    NetworkHelper networkHelper = NetworkHelper('$weatherUrl');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }
}
