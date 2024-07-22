import 'package:flutter/material.dart';
import 'dart:async';
//import 'package:flutter/scheduler.dart';

class ClockSettings extends StatefulWidget {
  const ClockSettings({super.key});

  @override
  _ClockSettingsState createState() => _ClockSettingsState();
}

class _ClockSettingsState extends State<ClockSettings> with WidgetsBindingObserver {
  String _currentTime = '';
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _updateTime();
    _startTimer();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _timer?.cancel();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _updateTime();
      _startTimer();
    } else if (state == AppLifecycleState.paused) {
      _timer?.cancel();
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(minutes: 1), (Timer t) => _updateTime());
  }

  void _updateTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      _currentTime = formattedDateTime;
    });
  }

  String _formatDateTime(DateTime dateTime) {
    return "${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    final double fontSize = MediaQuery.of(context).orientation == Orientation.portrait
        ? MediaQuery.of(context).size.width * 0.66
        : MediaQuery.of(context).size.height * 0.66; // Adjust font size based on orientation

    return Container(
      color: Colors.blue[800], // Dodger Blue color
      child: Center(
        child: Text(
          _currentTime,
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
