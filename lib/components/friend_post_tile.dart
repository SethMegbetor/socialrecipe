import 'package:flutter/material.dart';
import 'package:recipes/components/components.dart';
import 'package:recipes/models/post.dart';

class FriendPostTile extends StatelessWidget {
  final Post post;

  const FriendPostTile({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleImage(
          imageProvider: AssetImage(post.profileImageUrl),
          imageRadius: 25,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(post.comment),
              Text(
                "${post.timestamp} mins ago",
                style: const TextStyle(fontWeight: FontWeight.w700),
              )
            ],
          ),
        ))
      ],
    );
  }
}
