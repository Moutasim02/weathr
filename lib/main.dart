import 'package:flutter/material.dart';
import 'package:weathr/screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weathr',
      home: const Home(),
      routes: {
        Home.id: (ctx) => const Home(),
      },
    );
  }
}
