import 'package:counter_7/models/watchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/utils/fetch.dart';
import 'package:counter_7/components/Drawer.dart';
import 'package:counter_7/pages/SingleWatchlistPage.dart';

class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({super.key});

  @override
  State<MyWatchlistPage> createState() => _MyWatchlistPageState();
}

class _MyWatchlistPageState extends State<MyWatchlistPage> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watchlist'),
      ),
      // menambahkan Drawer untuk navigasi antarhalaman
      drawer: buildDrawer(context),
      body: FutureBuilder(
          future: fetchWatchlist(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return Column(
                  children: const [
                    Text(
                      "Tidak ada to do list :(",
                      style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => InkWell(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: snapshot.data![index].watched
                                      ? Colors.green
                                      : Colors.red,
                                  width: 5),
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: const [
                                BoxShadow(color: Colors.black, blurRadius: 2.0)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${snapshot.data![index].title}",
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Checkbox(
                                    value: snapshot.data![index].watched,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        this.value =
                                            snapshot.data![index].watched
                                                ? false
                                                : true;
                                      });
                                    },
                                  ),
                                  Text(
                                      "${snapshot.data![index].watched ? "Watched" : "Not Yet Watched"}"),
                                ],
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SingleWatchlistPage(
                                      data: snapshot.data![index],
                                    )),
                          );
                        }));
              }
            }
          }),
    );
  }
}
