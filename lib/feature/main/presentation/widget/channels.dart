import 'package:flutter/material.dart';
import 'package:twitch_clone_app/feature/main/presentation/data/channel_item_data.dart';
import 'package:twitch_clone_app/feature/main/presentation/model/channel_item_model.dart';
import 'package:twitch_clone_app/feature/main/presentation/widget/channel_item.dart';

class RecommendedChannels extends StatelessWidget {
  const RecommendedChannels({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Channels Recommended for You",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: channelItems.length,
              itemBuilder: (context, index) {
                final ChannelItemModel channelItem = channelItems[index];
                return ChannelItem(channelItem: channelItem);
              },
            ),
          ),
        ],
      ),
    );
  }
}
