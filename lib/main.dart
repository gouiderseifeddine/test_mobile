import 'package:flutter/material.dart';
import 'package:test_flutter/Authentification/loginScreen.dart';
import 'package:test_flutter/Authentification/splashScreen.dart';
import 'package:test_flutter/interfaces/playerBio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test',
      theme: ThemeData(
        primaryColor: Color(0xFF0d0f1e)
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
