import 'package:apprentice_flutter/components/circle_image.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

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
          imageRadius: 20.0,
        ),
        const SizedBox(
          width: 16.0,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.comment,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              '${post.timestamp} mins ago.',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ))
      ],
    );
  }
}
