import 'package:flutter/material.dart';
class CloudyIconWidget extends StatelessWidget {
  const CloudyIconWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Stack(
        children: [
          Positioned(
            child: SizedBox(
              child: Image.asset('assets/sun.png'),
              height: 150,
              width: 150,
            ),
            left: 50,
          ),
          Positioned(
            child: SizedBox(
              child: Image.asset('assets/cloud.png'),
              height: 200,
              width: 200,
            ),
            right: 50,
          )
        ],
      )
    );
  }
}