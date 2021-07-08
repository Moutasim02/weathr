import 'package:flutter/material.dart';
import 'package:weathr/screens/home.dart';
import 'package:weathr/screens/my_home.dart';
import 'package:weathr/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weathr',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
      routes: {
        Home.id: (ctx) => const Home(),
        MyHome.id: (ctx) => const MyHome(),
      },
    );
  }
}
