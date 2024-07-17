import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Story {
  String storyId;
  String largeImage;
  String smallImage;
  String contentsType;
  String contentsName;
  String storyUrl;
  String regDate;
  String smallImageAlt;
  String storyType;
  String title;
  String largeImageAlt;
  Story({
    required this.storyId,
    required this.largeImage,
    required this.smallImage,
    required this.contentsType,
    required this.contentsName,
    required this.storyUrl,
    required this.regDate,
    required this.smallImageAlt,
    required this.storyType,
    required this.title,
    required this.largeImageAlt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storyId': storyId,
      'largeImage': largeImage,
      'smallImage': smallImage,
      'contentsType': contentsType,
      'contentsName': contentsName,
      'storyUrl': storyUrl,
      'regDate': regDate,
      'smallImageAlt': smallImageAlt,
      'storyType': storyType,
      'title': title,
      'largeImageAlt': largeImageAlt,
    };
  }

  factory Story.fromMap(Map<String, dynamic> map) {
    return Story(
      storyId: map['storyId'] as String,
      largeImage: map['largeImage'] as String,
      smallImage: map['smallImage'] as String,
      contentsType: map['contentsType'] as String,
      contentsName: map['contentsName'] as String,
      storyUrl: map['storyUrl'] as String,
      regDate: map['regDate'] as String,
      smallImageAlt: map['smallImageAlt'] as String,
      storyType: map['storyType'] as String,
      title: map['title'] as String,
      largeImageAlt: map['largeImageAlt'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Story.fromJson(String source) =>
      Story.fromMap(json.decode(source) as Map<String, dynamic>);
}
