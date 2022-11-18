// To parse this JSON data
import 'dart:convert';

List<Watchlist> todoFromJson(String str) =>
    List<Watchlist>.from(json.decode(str).map((x) => Watchlist.fromJson(x)));

String todoToJson(List<Watchlist> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Watchlist {
  Watchlist({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  int userId;
  int id;
  String title;
  bool completed;

  factory Watchlist.fromJson(Map<String, dynamic> json) => Watchlist(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
      };
}