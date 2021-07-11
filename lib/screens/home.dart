import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:weathr/screens/weather_details.dart';
import 'package:weathr/utils/constants.dart';
import 'package:weathr/widgets/slide_tile.dart';
import 'package:weathr/widgets/weather_central.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Home extends StatefulWidget {
  static String id = 'home';

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double getSpacerSize() {
    int _spacerSize = 100;

    if (kIsWeb) {
      _spacerSize = 100;
    } else if (Platform.isAndroid) {
      _spacerSize = 130;
    } else if (Platform.isLinux || Platform.isWindows) {
      _spacerSize = 100;
    }
    return _spacerSize as double;
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // optional
        gradient: LinearGradient(
          colors: [
            customLightBlue,
            const Color(0xffEEEEEE),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        // not very practical across screen sizes
        // gradient: RadialGradient(
        //   radius: 1.2,
        //   // begin: Alignment.topLeft,
        //   // end: Alignment.bottomRight,
        //   center: Alignment.bottomCenter,
        //   colors: [
        //     customLightBlue,
        //     Color(0xffEEEEEE),
        //     // Colors.grey[200],
        //   ],
        // ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
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
                      color: Color(0xFF616161),
                    ),
                    const Text(
                      ' San Francisco',
                      style: TextStyle(
                        color: Color(0xFF616161),
                        fontSize: 20,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xFF616161),
                    ),
                    const Spacer(),
                    IconButton(
                      splashColor: customLightBlue,
                      icon: const FaIcon(
                        FontAwesomeIcons.calendarAlt,
                        color: Color(0xFF616161),
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
              const SizedBox(height: 40),
              const CentralWeatherWidget(),
              const SizedBox(
                height: 130,
                // height: getSpacerSize(),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    SlideTile(
                      dayAndDate: 'Thursday, 22 June',
                      time: '12:00 AM',
                      temp: 30,
                      weatherCode: 100,
                    ),
                    SlideTile(
                      dayAndDate: 'Friday, 23 June',
                      time: '1:00 PM',
                      temp: 30,
                      weatherCode: 100,
                    ),
                    SlideTile(
                      dayAndDate: 'Saturday, 24 June',
                      time: '2:00 PM',
                      temp: 30,
                      weatherCode: 100,
                    ),
                    SlideTile(
                      dayAndDate: 'Sunday, 25 June',
                      time: '3:00 PM',
                      temp: 30,
                      weatherCode: 100,
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
