import 'package:app_lstargram/model/post.dart';
import 'package:app_lstargram/model/story.dart';
import 'package:app_lstargram/repository/remote_repository/post_repository.dart';
import 'package:app_lstargram/repository/remote_repository/story_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_provider.g.dart';

@riverpod
Future<List<Story>> stories(StoriesRef ref) async {
  final stories = await ref.read(storyRepositoryProvider).fetchStories();
  return stories;
}

@riverpod
Future<List<Post>> posts(PostsRef ref) async {
  final posts = await ref.read(postRepositoryProvider).fetchPosts();
  return posts;
}
