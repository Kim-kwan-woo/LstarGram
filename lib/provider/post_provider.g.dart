// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storiesHash() => r'c6ff37f3b71a76e333f0f027e0e80240cd7c0164';

/// See also [stories].
@ProviderFor(stories)
final storiesProvider = AutoDisposeFutureProvider<List<Story>>.internal(
  stories,
  name: r'storiesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$storiesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StoriesRef = AutoDisposeFutureProviderRef<List<Story>>;
String _$postsHash() => r'15ae853365aeca0c7f50b81e83ccadd28eace310';

/// See also [posts].
@ProviderFor(posts)
final postsProvider = AutoDisposeFutureProvider<List<Post>>.internal(
  posts,
  name: r'postsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$postsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PostsRef = AutoDisposeFutureProviderRef<List<Post>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
