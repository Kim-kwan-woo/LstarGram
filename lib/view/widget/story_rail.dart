import 'package:app_lstargram/provider/post_provider.dart';
import 'package:app_lstargram/view/widget/story_circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StoryRail extends ConsumerWidget {
  const StoryRail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const double height = 128;
    return switch (ref.watch(storiesProvider)) {
      AsyncData(:final value) => Container(
          height: height,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[100]!,
              ),
            ),
          ),
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: value.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) =>
                StoryCircle(story: value[index], radius: height * 0.32),
            separatorBuilder: (_, __) => const SizedBox(width: 16),
          ),
        ),
      AsyncError(:final error) => Text('error: $error'),
      _ => const Text('loading'),
    };
  }
}
