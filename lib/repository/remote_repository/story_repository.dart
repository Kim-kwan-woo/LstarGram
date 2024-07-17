import 'package:app_lstargram/data_source/remote_data_source/story_data_source.dart';
import 'package:app_lstargram/model/story.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'story_repository.g.dart';

@riverpod
StoryRepository storyRepository(StoryRepositoryRef ref) {
  final dataSource = ref.read(storyDataSourceProvider);
  return StoryRepository(dataSource);
}

class StoryRepository {
  final StoryDataSource dataSource;

  StoryRepository(this.dataSource);

  Future<List<Story>> fetchStories() async => await dataSource.fetchStories();
}
