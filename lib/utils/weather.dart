import 'location.dart';
import 'networking.dart';

// class which deals with high level stuff
class WeatherModel {
  late double lat;
  late double lon;
  late int weatherID;

  late double locationTemp;

  // gets data based on location data
  void getLocation(context) async {
    // gets location
    Location locationStuff = Location();
    await locationStuff.getLocationMethod();
    lat = locationStuff.latitude;
    lon = locationStuff.longitude;

    // makes actual requests
    Networker receptionist = Networker(lat: lat, lon: lon);
    await receptionist.getData();
    locationTemp = receptionist.temp.toDouble();

    weatherID = receptionist.weatherID;

    // pushes to new screen
  }

  // gets data based on city name
  Future<dynamic> getCityWeather(context, String cityName) async {
    Networker receptionist = Networker(cityName: cityName);
    await receptionist.getCityData();

    // pushes to new screen
  }
}
