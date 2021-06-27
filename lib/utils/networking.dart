import 'package:http/http.dart' as http;
import 'dart:convert';

// class which deals with low level stuff

class Networker {
  late double lat;
  late double lon;
  late String cityName;
  late String precious;
  late String weatherDetailsString;
  late double temp;
  late String placeName;
  late int weatherID;
  late String stringWeather;

  Networker({
    this.lat = 0,
    this.lon = 0,
    this.cityName = '',
  });

  // add api key here
  final apiKey = '987d4a02f15aed097a27cbdd35877545';

  // gets data based on location data
  Future<void> getData() async {
    http.Response data = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey&units=metric'));

    print(
        'Requesting for: ${'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey&units=metric'}');

    if (data.statusCode == 200) {
      precious = data.body;

      weatherDetailsString = jsonDecode(precious)['weather'][0]['main'];
      weatherID = jsonDecode(precious)['weather'][0]['id'];
      temp = jsonDecode(precious)['main']['temp'];
      placeName = jsonDecode(precious)['name'];

      print(weatherDetailsString);
      print(temp);
      print(placeName);
    } else {
      print(data.statusCode);
    }
  }

  // gets data based on city name
  Future<void> getCityData() async {
    http.Response data = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric'));

    print(
        'Requesting for: ${'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric'}');

    if (data.statusCode == 200) {
      precious = data.body;

      weatherDetailsString = jsonDecode(precious)['weather'][0]['main'];
      weatherID = jsonDecode(precious)['weather'][0]['id'];
      temp = jsonDecode(precious)['main']['temp'];
      placeName = jsonDecode(precious)['name'];

      print(weatherDetailsString);
      print(temp);
      print(placeName);
    } else {
      print(data.statusCode);
    }
  }

  // temp conditions seen at https://openweathermap.org/weather-conditions
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  // returns a quick message depending on temperature
  String getMessage(double temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
