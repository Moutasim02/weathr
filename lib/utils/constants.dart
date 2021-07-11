import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color niceTeal = const Color(0xff26ADA0);
Color niceBlack = const Color(0xff06070B);
Color niceLightTeal = const Color(0xff28E2CE);
Color niceLightBlue = const Color(0xff4be2e3);
Color niceDarkGrey = const Color(0xff405c63);
Color niceLightGrey = const Color(0xffdae0e1);
Color niceGreen = const Color(0xff7f863e);

const bigFont = TextStyle(fontSize: 50);
const medFont = TextStyle(fontSize: 25);
const smallFont = TextStyle(fontSize: 15);

Color kDarkBlue = const Color(0xff06070B);
Color kLightBlue = const Color(0xff212432);

String weatherDetailsCityName = '';

FaIcon gimmeIcon(int weatherCode, {bool butMini = false}) {
  IconData _theIcon;
  Color? _iconColor;

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
