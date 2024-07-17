import 'package:app_lstargram/model/story.dart';
import 'package:app_lstargram/view/page/app.dart';
import 'package:app_lstargram/view/page/story_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const App();
      },
    ),
    GoRoute(
      path: '/story/:id',
      builder: (BuildContext context, GoRouterState state) {
        final extra = state.extra as Map<String, dynamic>;
        return StoryPage(story: extra['story'] as Story);
      },
    )
  ],
);
