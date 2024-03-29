
import 'package:barbershope/pages/login.dart';
import 'package:barbershope/pages/onboarding.dart';
import 'package:barbershope/pages/servise_list.dart';
import 'package:barbershope/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: AuthService().authStateChanges,
        builder: (context, snapshot) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            // home:
            //     AuthService().getCurrentUser != null ? Onboearding() : LogIn(),

            home: ServiceList(),
          );
        });
  }
}
