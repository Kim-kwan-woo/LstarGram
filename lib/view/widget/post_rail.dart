import 'package:app_lstargram/provider/post_provider.dart';
import 'package:app_lstargram/view/widget/post_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostRail extends ConsumerWidget {
  const PostRail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async {
        // refresh의 경우 future를 받아서 처리할 수 있음
        // final newValue = await ref.refresh(postsProvider.future);

        // invalidate의 경우 실행하고 value를 기다리지 않음
        // ref.invalidate(postsProvider);
      },
      child: switch (ref.watch(postsProvider)) {
        AsyncData(:final value) => ListView.separated(
            // itemExtent: 0,
            padding: const EdgeInsets.all(0),
            itemCount: value.length,
            itemBuilder: (_, index) => PostCard(
              post: value[index],
            ),
            separatorBuilder: (_, __) => const SizedBox(
              height: 16,
            ),
          ),
        AsyncError(:final error) => Text(error.toString()),
        _ => const Center(child: CircularProgressIndicator.adaptive()),
      },
    );
  }
}
