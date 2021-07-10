import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

String weatherDetailsCityName = '';

Color kDarkBlue = const Color(0xff06070B);
Color kLightBlue = const Color(0xff212432);

FaIcon gimmeIcon(int weatherCode, {bool butMini = false}) {
  IconData _theIcon;
  var _iconColor;

  if (weatherCode == 700) {
    _theIcon = FontAwesomeIcons.cloudShowersHeavy;
    _iconColor = Colors.blue[200];
  } else if (weatherCode == 800) {
    _theIcon = FontAwesomeIcons.cloud;
    _iconColor = Colors.white60;
  } else {
    _theIcon = FontAwesomeIcons.solidSun;
    _iconColor = Colors.yellow[800];
  }

  return FaIcon(
    _theIcon,
    color: _iconColor,
    size: butMini ? 24 : 70,
  );
}
