import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weathr/utils/constants.dart';

class MyHome extends StatelessWidget {
  static String id = 'my_home';
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: niceLightBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 10,
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(Icons.location_on),
                const SizedBox(
                  width: 5,
                ),
                const Text('San Fransisco'),
                const Spacer(),
                Icon(
                  Icons.calendar_today,
                  color: niceDarkGrey,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Icon(
              Icons.cloud,
              size: 250,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Cloudy',
              style: smallFont.copyWith(
                color: niceDarkGrey,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              '28 °',
              style: bigFont.copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.wind,
                  color: niceDarkGrey,
                ),
                Text(
                  ' 8 km/hr',
                  style: TextStyle(
                    color: niceDarkGrey,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  FontAwesomeIcons.tint,
                  color: niceDarkGrey,
                ),
                Text(
                  ' 47 %',
                  style: TextStyle(
                    color: niceDarkGrey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
