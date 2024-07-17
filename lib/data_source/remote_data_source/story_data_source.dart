// https://www.lge.co.kr/retrieveStoryList.lgajax

import 'dart:convert';

import 'package:app_lstargram/model/story.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'story_data_source.g.dart';

@riverpod
StoryDataSource storyDataSource(StoryDataSourceRef ref) => StoryDataSource();

class StoryDataSource {
  Future<List<Story>> fetchStories() async {
    final url = Uri.https('www.lge.co.kr', 'retrieveStoryList.lgajax', {
      'page': '1',
      'type': 'NewStory',
    });
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    final rawStoryList =
        List<Map<String, dynamic>>.from(data['data']['storyList']);
    final storyList =
        List<Story>.from(rawStoryList.map((e) => Story.fromMap(e)));
    return storyList;
  }
}
