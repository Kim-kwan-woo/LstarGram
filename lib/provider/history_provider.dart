import 'dart:convert';

import 'package:app_lstargram/model/story.dart';
import 'package:app_lstargram/model/story_history.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'history_provider.g.dart';

@riverpod
class History extends _$History {
  @override
  Future<List<StoryHistory>> build() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final storyHistories = prefs.getStringList('storyHistories');
    final convertedHistories = storyHistories
        ?.map((history) => StoryHistory.fromMap(
              jsonDecode(history) as Map<String, dynamic>,
            ))
        .toList();

    return convertedHistories ?? [];
  }

  addStoryHistory(Story story) async {
    if (!state.hasValue) return;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final temp = List<StoryHistory>.from(state.value!);

    temp.add(StoryHistory(
      id: story.storyId,
      contentsName: story.contentsName,
      image: 'https://www.lge.co.kr/${story.smallImage}',
      readAt: DateTime.now(),
    ));

    prefs.setStringList(
      'storyHistories',
      temp.map((item) => jsonEncode(item.toMap())).toList(),
    );

    state = AsyncData(temp);
  }

  clearStoryHistory() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();

    ref.invalidateSelf();
  }
}
