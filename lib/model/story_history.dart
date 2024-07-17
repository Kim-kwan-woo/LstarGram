// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class StoryHistory {
  String id;
  String contentsName;
  String image;
  DateTime readAt;

  StoryHistory({
    required this.id,
    required this.contentsName,
    required this.image,
    required this.readAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'contentsName': contentsName,
      'image': image,
      'readAt': readAt.toString(),
    };
  }

  factory StoryHistory.fromMap(Map<String, dynamic> map) {
    return StoryHistory(
      id: map['id'] as String,
      contentsName: map['contentsName'] as String,
      image: map['image'] as String,
      readAt: DateTime.parse(map['readAt']),
    );
  }

  String toJson() => json.encode(toMap());

  factory StoryHistory.fromJson(String source) =>
      StoryHistory.fromMap(json.decode(source) as Map<String, dynamic>);
}
