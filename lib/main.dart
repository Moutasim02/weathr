import 'package:flutter/material.dart';
import 'package:weathr/screens/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    // '/': (context) => Loading(),
    '/home': (context) => Home(),
  },
));
