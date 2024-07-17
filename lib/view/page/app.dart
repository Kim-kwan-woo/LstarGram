import 'package:app_lstargram/view/widget/history_drawer.dart';
import 'package:app_lstargram/view/widget/post_rail.dart';
import 'package:app_lstargram/view/widget/story_rail.dart';
import 'package:flutter/material.dart';
import 'package:iconoir_flutter/regular/heart.dart';
import 'package:iconoir_flutter/regular/send_diagonal.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HistoryDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => [
          const SliverAppBar(
            centerTitle: false,
            title: Text('LstarGram'),
            backgroundColor: Colors.white,
            pinned: false,
            floating: false,
            actions: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Heart(),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SendDiagonal(),
              ),
            ],
          ),
          const SliverToBoxAdapter(
            child: StoryRail(),
          ),
        ],
        body: const PostRail(),
      ),
    );
  }
}
