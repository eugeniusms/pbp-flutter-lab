import 'package:flutter/material.dart';
import 'package:counter_7/pages/CounterPage.dart';
import 'package:counter_7/pages/Form.dart';
import 'package:counter_7/pages/ShowBudget.dart';

// merupakan sebuah Drawer yang digunakan untuk navigasi antar page
Drawer buildDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      // menu navigasi
      children: [
        // navigasi ke halaman utama "counter_7"
        ListTile(
          title: const Text('counter_7'),
          // saat diklik maka Navigator akan mengarahkan ke halaman CounterPage
          onTap: () {
            // Route menu ke counter
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const CounterPage(title: "Counter 7",)),
            );
          },
        ),
        // navigasi ke halaman "Tambah Budget"
        ListTile(
          title: const Text('Tambah Budget'),
          // saat diklik maka Navigator akan mengarahkan ke halaman Form
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyFormPage()),
            );
          },
        ),
        // navigasi ke halaman "Data Budget"
        ListTile(
          title: const Text('Data Budget'),
          onTap: () {
            // saat diklik maka Navigator akan mengarahkan ke halaman ShowBudget
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ShowBudget()),
            );
          },
        ),
      ],
    ),
  );
}