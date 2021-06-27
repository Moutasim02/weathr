import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weathr/utils/constants.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

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
