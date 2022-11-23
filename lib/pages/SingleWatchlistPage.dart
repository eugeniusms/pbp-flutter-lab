import 'package:flutter/material.dart';
import 'package:counter_7/components/Drawer.dart';
import 'package:counter_7/models/watchlist.dart';

class SingleWatchlistPage extends StatelessWidget {
  final Watchlist data;
  SingleWatchlistPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Container(
                height: 80.0,
                padding: EdgeInsets.all(18.0),
                child: Text("${data.title}",
                    style: TextStyle(
                        fontSize: 25,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w800))),
            Align(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Release Date: ${data.release_date}",
                    style: TextStyle(fontSize: 16)),
                Text("Rating: ${data.rating}/5",
                    style: TextStyle(fontSize: 16)),
                Text("Status: ${data.watched}", style: TextStyle(fontSize: 16)),
                Text("Review: \n${data.review}",
                    style: TextStyle(fontSize: 16)),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

// References:
// *) https://medium.com/flutter-community/simple-ways-to-pass-to-and-share-data-with-widgets-pages-f8988534bd5b
// *) https://dev.to/thepythongeeks/how-to-make-a-clickable-container-in-flutter-1953
// *) https://www.fluttercampus.com/guide/84/how-to-change-font-style-of-text-widget-flutter/
// *) https://stackoverflow.com/questions/54513641/flutterwhy-my-column-alignment-is-always-center