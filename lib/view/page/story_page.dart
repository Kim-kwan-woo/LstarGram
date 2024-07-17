import 'dart:ui';

import 'package:app_lstargram/model/story.dart';
import 'package:app_lstargram/provider/history_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:iconoir_flutter/regular/more_horiz.dart';

class StoryPage extends ConsumerWidget {
  const StoryPage({super.key, required this.story});
  final Story story;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(historyProvider.notifier).addStoryHistory(story);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://www.lge.co.kr${story.largeImage}',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://www.lge.co.kr${story.smallImage}',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        story.contentsName,
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      const Spacer(),
                      const MoreHoriz(
                        color: Colors.white,
                      ),
                      CloseButton(
                        color: Colors.white,
                        onPressed: () => context.pop(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
