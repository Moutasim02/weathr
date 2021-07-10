import 'package:flutter/material.dart';
import '../constant.dart';

class WeatherDetails extends StatelessWidget {
  static String id = 'weather_details';

  const WeatherDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBlue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kLightBlue,
        title: Text(weatherDetailsCityName),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff2E3341),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Text(
                          'The wind is very strong today! This is not the time for a yacht trip :)',
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 35,
                    child: gimmeIcon(700),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Next week',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              RowTile(day: 'Sunday', temp: '25'),
              RowTile(day: 'Monday', temp: '25'),
              RowTile(day: 'Tuesday', temp: '25'),
              RowTile(day: 'Wednesday', temp: '25'),
              RowTile(day: 'Thursday', temp: '25'),
              RowTile(day: 'Friday', temp: '25'),
              RowTile(day: 'Saturday', temp: '25'),
            ],
          ),
        ),
      ),
    );
  }
}

class RowTile extends StatelessWidget {
  RowTile({
    Key? key,
    required this.day,
    required this.temp,
    // required this.pathToAsset
  }) : super(key: key);

  String day;
  String temp;

  // String pathToAsset;

  final TextStyle _textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          Text(
            day,
            style: _textStyle,
          ),
          const Spacer(),
          Text(
            temp + '°',
            style: _textStyle,
          ),
          const Spacer(),
          gimmeIcon(700, butMini: true),
          // Image.asset(pathToAsset), // once assets are ready, uncomment
        ],
      ),
    );
  }
}
