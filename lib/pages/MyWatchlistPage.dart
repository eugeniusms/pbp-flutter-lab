import 'package:flutter/material.dart';
import 'package:counter_7/utils/fetch.dart';
import 'package:counter_7/components/Drawer.dart';

class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({super.key});

  @override
  State<MyWatchlistPage> createState() => _MyWatchlistPageState();
}

class _MyWatchlistPageState extends State<MyWatchlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do'),
      ),
      // menambahkan Drawer untuk navigasi antarhalaman
      drawer: buildDrawer(context),
      body: FutureBuilder(
          future: fetchWatchlist(),
          builder: (context, AsyncSnapshot snapshot) {
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }
}