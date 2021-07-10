import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:weathr/screens/weather_details.dart';
import 'package:weathr/widgets/slide_tile.dart';
import 'package:weathr/widgets/weather_central.dart';

import '../constant.dart';

class Home extends StatefulWidget {
  static String id = 'home';
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5BD4FC),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.pin_drop,
                    ),
                    Text(
                      'San Francisco',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 20,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      splashColor: Colors.indigoAccent,
                      icon: const FaIcon(
                        FontAwesomeIcons.calendarAlt,
                      ),
                      onPressed: () {
                        weatherDetailsCityName = 'San Fransisco';
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: const WeatherDetails(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70),
              const WeatherCentral(),
              const SizedBox(
                height: 130,
              ),
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    SlideTile(
                      dayAndDate: 'Monday, 19 June',
                      time: '9:00 AM',
                      temp: 28,
                      weatherCode: 800,
                    ),
                    SlideTile(
                      dayAndDate: 'Tuesday, 20 June',
                      time: '10:00 AM',
                      temp: 30,
                      weatherCode: 100,
                    ),
                    SlideTile(
                      dayAndDate: 'Wednesday, 21 June',
                      time: '11:00 AM',
                      temp: 35,
                      weatherCode: 800,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
