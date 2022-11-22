import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/models/watchlist.dart';

Future<List<Watchlist>> fetchWatchlist() async {
  print("MASUK");
  var url = Uri.parse(
      'https://pbp-assignment-eugeniusms.herokuapp.com/mywatchlist/json/');
  print("MASUK 2");
  var response = await http.get(url, headers: {
    "Access-Control-Allow-Origin": "*",
    "Content-Type": "application/json",
  });
  print("MASUK 3");
  // print(response.body);
  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));
  print(data);

  // melakukan konversi data json menjadi object ToDo
  List<Watchlist> listWatchlist = [];
  for (var d in data) {
    if (d != null) {
      print(d);
      listWatchlist.add(Watchlist.fromJson(d));
    }
  }

  return listWatchlist;
}

// REFERENCES
// 1) https://stackoverflow.com/questions/65630743/how-to-solve-flutter-web-api-cors-error-only-with-dart-code