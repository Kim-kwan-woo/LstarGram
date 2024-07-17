import 'package:app_lstargram/provider/history_provider.dart';
import 'package:app_lstargram/view/widget/history_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconoir_flutter/regular/trash.dart';

class HistoryDrawer extends ConsumerWidget {
  const HistoryDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('History', style: TextStyle(fontSize: 18)),
                  IconButton(
                    onPressed:
                        ref.read(historyProvider.notifier).clearStoryHistory,
                    icon: const Trash(),
                  ),
                ],
              ),
            ),
            switch (ref.watch(historyProvider)) {
              AsyncData(:final value) => Expanded(
                  child: ListView(
                    children: value
                        .map((item) => HistoryTile(history: item))
                        .toList(),
                  ),
                ),
              AsyncError(:final error) => Text('error $error'),
              _ => const CircularProgressIndicator.adaptive()
            },
          ],
        ),
      ),
    );
  }
}
