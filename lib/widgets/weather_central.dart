import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cloudy_icon_widget.dart';

class WeatherCentral extends StatelessWidget {
  const WeatherCentral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: CloudyIconWidget(),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Cloudy',
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 35,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '28 °',
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 35,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.wind,
              color: Colors.black54,
              size: 25,
            ),
            Text(
              ' 8 km/hr',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 40,
            ),
            FaIcon(
              FontAwesomeIcons.tint,
              color: Colors.black54,
              size: 25,
            ),
            Text(
              ' 47 %',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
