import 'dart:convert';

List<RandomJoke> randomJokeFromJson(String str) =>
    List<RandomJoke>.from(json.decode(str).map((x) => RandomJoke.fromJson(x)));

String randomJokeToJson(List<RandomJoke> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RandomJoke {
  RandomJoke({
    required this.id,
    required this.type,
    required this.setup,
    required this.punchline,
  });
  int id;
  String type;
  final String setup;
  final String punchline;

  factory RandomJoke.fromJson(Map<String, dynamic> json) => RandomJoke(
        id: json["id"],
        type: json["type"],
        setup: json["setup"],
        punchline: json["punchline"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "setup": setup,
        "punchline": punchline,
      };
}
