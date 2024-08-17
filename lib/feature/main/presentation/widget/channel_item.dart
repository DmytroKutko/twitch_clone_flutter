import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitch_clone_app/feature/main/presentation/model/channel_item_model.dart';

class ChannelItem extends StatelessWidget {
  final ChannelItemModel channelItem;
  const ChannelItem({super.key, required this.channelItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                channelItem.image,
                width: 110,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        child: Image.asset(
                          channelItem.userIcon,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(channelItem.userName),
                    ],
                  ),
                  Text(
                    channelItem.subtitle,
                    style: const TextStyle(color: Colors.black54),
                  ),
                  Text(
                    channelItem.description,
                    style: const TextStyle(color: Colors.black54),
                  ),
                  Row(
                    children: List.generate(
                      channelItem.tags.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Chip(
                          padding: const EdgeInsets.all(2),
                          backgroundColor: Colors.grey[200],
                          label: Text(
                            channelItem.tags[index],
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: const BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                          ),
                          elevation: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SvgPicture.asset(
            "assets/icons/dots_icon.svg",
          ),
        ],
      ),
    );
  }
}
