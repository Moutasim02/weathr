import 'package:flutter/material.dart';

class CloudyIconWidget extends StatelessWidget {
  const CloudyIconWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: MediaQuery.of(context).size.width * 0.8,
      // height: MediaQuery.of(context).size.height * 0.25,
      /// to ensure proper size, for now
      width: 370,
      height: 120,
      child: Stack(
        children: [
          Positioned(
            child: SizedBox(
              child: Image.asset('assets/sun.png'),
              height: 80,
              width: 80,
            ),
            left: 110,
          ),
          Positioned(
            child: SizedBox(
              child: Image.asset('assets/cloud.png'),
              height: 80,
              width: 150,
            ),
            right: 90,
          )
        ],
      ),
    );
  }
}
