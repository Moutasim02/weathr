import 'package:flutter/material.dart';
import 'package:weathr/widgets/cloudy.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      backgroundColor: Colors.blue[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.pin_drop,
                      ),
                    ],
                  ),
                  Text(
                    'San Francisco',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  FaIcon(
                    FontAwesomeIcons.calendarAlt,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Center(child: CloudyIconWidget()),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Text(
                    'Cloudy',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 45,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '28 °',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 45,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.wind,
                        color: Colors.black54,
                        size: 23,
                      ),
                      Text(
                        ' 8 km/hr',
                        style: TextStyle(),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      FaIcon(
                        FontAwesomeIcons.tint,
                        color: Colors.black54,
                        size: 23,
                      ),
                      Text(
                        ' 47 %',
                        style: TextStyle(),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
