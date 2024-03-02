import "package:flutter/material.dart";
import 'package:lottie/lottie.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ListView(
            children: [
              Center(
                child: Lottie.asset("assets/Animation.json"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}