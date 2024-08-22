import 'package:flutter/material.dart';
import 'package:twitch_clone_app/feature/main/presentation/screen/following_page.dart';

final List<Widget> widgetOptions = <Widget>[
  const FollowingPage(),
  const Text(
    'Discover Page',
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  ),
  const Text(
    'Browse Page',
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  ),
  const Text(
    'Search Page',
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  ),
];
