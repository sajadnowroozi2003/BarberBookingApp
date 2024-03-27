// import 'package:barbershope/pages/booking.dart';
// import 'package:barbershope/pages/home.dart';
import 'dart:math';

import 'package:barbershope/pages/login.dart';
import 'package:barbershope/pages/onboarding.dart';
// import 'package:barbershope/pages/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn(),
    );
  }
}
