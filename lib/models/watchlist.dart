// To parse this JSON data
import 'dart:convert';

List<Watchlist> todoFromJson(String str) =>
    List<Watchlist>.from(json.decode(str).map((x) => Watchlist.fromJson(x)));

String todoToJson(List<Watchlist> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Watchlist {
  Watchlist({
    required this.id,
    required this.watched,
    required this.title,
    required this.rating,
    required this.release_date,
    required this.review,
  });

  int id;
  bool watched;
  String title;
  int rating;
  String release_date;
  String review;

  factory Watchlist.fromJson(Map<String, dynamic> json) => Watchlist(
        id: json["pk"],
        watched: json["fields"]["watched"],
        title: json["fields"]["title"],
        rating: json["fields"]["rating"],
        release_date: json["fields"]["release_date"],
        review: json["fields"]["review"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "watched": watched,
        "title": title,
        "rating": rating,
        "release_date": release_date,
        "review": review,
      };
}