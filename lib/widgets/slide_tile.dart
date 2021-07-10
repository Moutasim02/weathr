import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

// main tile, accommodates the day and date on top

class SlideTile extends StatelessWidget {
  SlideTile({
    Key? key,
    required this.dayAndDate,
    required this.time,
    required this.temp,
    required this.weatherCode,
  }) : super(key: key);

  String dayAndDate;
  String time;
  int weatherCode;
  int temp;

  String processWeatherType(int weatherCode) {
    if (weatherCode == 700) {
      return 'assets/rainy.png';
    } else if (weatherCode == 800) {
      return 'assets/cloud_outline.png';
    } else {
      return 'assets/sun.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
        height: 180,
        child: Column(
          children: [
            Text(
              dayAndDate,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ContainerTile(
              time: time,
              pathOfAsset: processWeatherType(weatherCode),
              temp: temp.toString(),
            ),
          ],
        ),
      ),
    );
  }
}

// the container within the container, with some box decoration
class ContainerTile extends StatelessWidget {
  ContainerTile({
    Key? key,
    required this.time,
    required this.pathOfAsset,
    required this.temp,
  }) : super(key: key);

  String time;
  String pathOfAsset;
  String temp;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white10,
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 5,
        ),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(
                  color: Color(0xFF616161),
                  fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: Image.asset(
                pathOfAsset,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              temp + '°',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF616161),
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
