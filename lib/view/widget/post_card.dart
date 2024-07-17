import 'package:app_lstargram/model/post.dart';
import 'package:flutter/material.dart';
import 'package:iconoir_flutter/regular/bookmark.dart';
import 'package:iconoir_flutter/regular/chat_bubble_empty.dart';
import 'package:iconoir_flutter/regular/heart.dart';
import 'package:iconoir_flutter/regular/more_horiz.dart';
import 'package:iconoir_flutter/regular/send_diagonal.dart';
import 'package:iconoir_flutter/regular/profile_circle.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.post});
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage:
                NetworkImage('https://www.lge.co.kr/${post.smallImageAddr}'),
          ),
          title: const Text('LG전자'),
          subtitle: const Text('오늘의 랭킹(추천)'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.grey[100],
                  foregroundColor: Colors.black87,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('팔로우'),
              ),
              const SizedBox(width: 8),
              const MoreHoriz(),
            ],
          ),
        ),
        Divider(color: Colors.grey[100], height: 1),
        Image.network('https://www.lge.co.kr/${post.largeImageAddr}'),
        Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 96,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Heart(),
                        SizedBox(width: 8),
                        ChatBubbleEmpty(),
                        SizedBox(width: 8),
                        SendDiagonal(),
                      ],
                    ),
                  ),
                  Bookmark(),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                '조회수 ${post.viewCount}개',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const Text(
                    'LG전자',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(post.modelDisplayName),
                ],
              ),
              const SizedBox(height: 4),
              const Row(
                children: [
                  ProfileCircle(width: 18),
                  SizedBox(width: 6),
                  Text(
                    '댓글 달기...',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
