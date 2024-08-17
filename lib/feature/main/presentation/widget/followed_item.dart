import 'package:flutter/material.dart';

import 'package:twitch_clone_app/feature/main/presentation/model/followed_item_model.dart';

class FollowedItem extends StatelessWidget {
  final FollowedItemModel followedItem;
  
  const FollowedItem({
    super.key,
    required this.followedItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122,
      padding: const EdgeInsets.only(right: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            fit: BoxFit.cover,
            followedItem.image,
            height: 164,
            width: 122,
          ),
          Text(
            followedItem.title,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.circle,
                color: Colors.red,
                size: 8,
              ),
              const SizedBox(width: 2),
              Text(followedItem.watchingNow),
            ],
          ),
        ],
      ),
    );
  }
}
