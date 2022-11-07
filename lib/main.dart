import 'package:flutter/material.dart'; // import ui material dari flutter
import 'pages/CounterPage.dart'; // import CounterPage widget

// fungsi utama run program
void main() {
  // menjalankan aplikasi counter seven
  runApp(const CounterSeven());
}

// aplikasi counter seven 
class CounterSeven extends StatelessWidget {
  // inisiasi key pada contructor CounterSeven
  const CounterSeven({super.key});

  // widget root of application.
  @override
  Widget build(BuildContext context) {
    // seperti meta tag pada html
    return MaterialApp(
      title: 'Counter 7',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // menampilkan judul pada CounterPage
      home: const CounterPage(title: 'Program Counter'), 
    );
  }
}