import 'package:flutter/material.dart';
import 'package:twitch_clone_app/feature/main/presentation/data/channel_item_data.dart';
import 'package:twitch_clone_app/feature/main/presentation/model/channel_item_model.dart';
import 'package:twitch_clone_app/feature/main/presentation/widget/channel_item.dart';

class RecommendedChannelsSliver extends StatelessWidget {
  const RecommendedChannelsSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final ChannelItemModel channelItem = channelItems[index];
            return ChannelItem(channelItem: channelItem);
          },
          childCount: channelItems.length, 
        ),
      ),
    );
  }
}
