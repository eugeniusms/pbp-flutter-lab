import 'package:flutter/material.dart';
import 'package:counter_7/pages/CounterPage.dart';
import 'package:counter_7/pages/FormBudgetPage.dart';
import 'package:counter_7/pages/ShowBudgetPage.dart';
import 'package:counter_7/pages/MyWatchlistPage.dart';

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
              MaterialPageRoute(builder: (context) => const FormBudgetPage()),
            );
          },
        ),
        // navigasi ke halaman "Data Budget"
        ListTile(
          title: const Text('Data Budget'),
          onTap: () {
            // saat diklik maka Navigator akan mengarahkan ke halaman ShowBudgetPage
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ShowBudgetPage()),
            );
          },
        ),
        // navigasi ke halaman "My Watchlist"
        ListTile(
          title: const Text('My Watchlist'),
          onTap: () {
            // saat diklik maka Navigator akan mengarahkan ke halaman MyWatchlistPage
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyWatchlistPage()),
            );
          },
        ),
      ],
    ),
  );
}