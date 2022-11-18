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
  DateTime release_date;
  String review;

  factory Watchlist.fromJson(Map<String, dynamic> json) => Watchlist(
        id: json["pk"],
        watched: json["watched"],
        title: json["title"],
        rating: json["rating"],
        release_date: DateTime.parse(json["release_date"]),
        review: json["review"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "watched": watched,
        "title": title,
        "rating": rating,
        "release_date": release_date.toIso8601String(),
        "review": review,
      };
}