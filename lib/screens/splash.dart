import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weathr/utils/constants.dart';

import 'my_home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // nav to home.dart
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, MyHome.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: niceDarkGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Weathr',
              style: bigFont.copyWith(
                fontWeight: FontWeight.bold,
                color: niceLightGrey,
              ),
            ),
          ),
          const SizedBox(height: 30),
          CircularProgressIndicator(
            color: niceLightTeal,
          ),
        ],
      ),
    );
  }
}
