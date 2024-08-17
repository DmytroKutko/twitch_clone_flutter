import 'package:flutter/material.dart';
import 'package:twitch_clone_app/feature/main/presentation/data/followed_item_data.dart';
import 'package:twitch_clone_app/feature/main/presentation/widget/followed_item.dart';

class FollowedCategories extends StatelessWidget {
  const FollowedCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            "Followed categories",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 210,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: followedItems.length,
            itemBuilder: (context, index) {
              final followedItem = followedItems[index];
              final isFirst = index == 0;
              final isLast = index == 4;
              return Padding(
                padding: EdgeInsets.only(
                  left: isFirst ? 16.0 : 4.0,
                  right: isLast ? 16.0 : 4.0,
                ),
                child: FollowedItem(
                  followedItem: followedItem,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
