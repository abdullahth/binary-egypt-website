import 'package:flutter/material.dart';

import 'screens/landing_page/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Binary Egypt',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          accentColor: Color(0xFF558C03),
          primaryColor: Color(0xFF0450cf),
          scaffoldBackgroundColor: Color(0xFFF8F8F8)),
      home: LandingPage(),
    );
  }
}
