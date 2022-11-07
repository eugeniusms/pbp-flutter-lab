import 'package:flutter/material.dart';
import 'pages/CounterPage.dart';

void main() {
  runApp(const CounterSeven());
}

class CounterSeven extends StatelessWidget {
  const CounterSeven({super.key});

  // widget root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter 7',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterPage(title: 'Program Counter'),
    );
  }
}