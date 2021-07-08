import 'package:flutter/material.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                Icons.pin_drop,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: [
                Text(
                  'San Francisco',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 320),
            child: Icon(
              Icons.calendar_today_rounded,
            ),
          ),
          Center(
            child: Text(
              'Cloudy',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 45,
              ),
            ),
          ),
          Text(
            '28 °',
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 45,
            ),
          ),
        ],
      ),
    );
  }
}
