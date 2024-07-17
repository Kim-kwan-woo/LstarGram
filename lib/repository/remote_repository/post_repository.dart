import 'package:app_lstargram/data_source/remote_data_source/post_data_source.dart';
import 'package:app_lstargram/model/post.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_repository.g.dart';

@riverpod
PostRepository postRepository(PostRepositoryRef ref) {
  final dataSource = ref.read(postDataSourceProvider);
  return PostRepository(dataSource);
}

class PostRepository {
  final PostDataSource dataSource;

  PostRepository(this.dataSource);

  Future<List<Post>> fetchPosts() async => dataSource.fetchPosts();
}
