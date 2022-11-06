import 'package:flutter/material.dart';

void main() => runApp(CounterSeven()); // Menjalankan aplikasi

class CounterSeven extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Program Counter"),
        ),
        body: Text("This is my default text!"),
      ),
    );
  }
}
