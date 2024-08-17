import 'package:flutter/material.dart';
import 'package:twitch_clone_app/feature/main/presentation/widget/app_bar.dart';
import 'package:twitch_clone_app/feature/main/presentation/widget/followed_categories.dart';
import 'package:twitch_clone_app/feature/main/presentation/widget/channels.dart';

class FollowingPage extends StatefulWidget {
  const FollowingPage({super.key});

  @override
  State<FollowingPage> createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          flexibleSpace: FlexibleSpaceBar(
            title: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SliverAppBarContent(),
            ),
          ),
          pinned: false,
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Following',
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 8),
        ),
        SliverToBoxAdapter(
          child: FollowedCategories(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 8),
        ),
        SliverFillRemaining(
          child: RecommendedChannels(),
        ),
      ],
    );
  }
}
