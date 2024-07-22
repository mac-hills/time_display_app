import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'clock_settings.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky); // Set full-screen mode
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Display',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TimeScreen(),
      debugShowCheckedModeBanner: false, // Remove the debug banner
    );
  }
}

class TimeScreen extends StatelessWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ClockSettings(),
    );
  }
}
