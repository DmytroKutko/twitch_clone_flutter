import 'package:flutter/material.dart';

class SliverAppBarContent extends StatelessWidget {
  const SliverAppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/icons/user_icon.png",
          height: 28,
          width: 28,
        ),
        const Spacer(flex: 1),
        Image.asset(
          "assets/icons/translation_icon.png",
          height: 28,
          width: 28,
        ),
        const SizedBox(width: 8),
        Image.asset(
          "assets/icons/chat_icon.png",
          height: 28,
          width: 28,
        ),
        const SizedBox(width: 8),
        Image.asset(
          "assets/icons/box_icon.png",
          height: 28,
          width: 28,
        ),
        const SizedBox(width: 16),
        Chip(
          backgroundColor: Colors.grey[200],
          label: const Text("Create"),
          avatar: Image.asset("assets/images/create.png"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
            side: const BorderSide(
              color: Colors.transparent,
              width: 0,
            ),
          ),
          elevation: 0,
        ),
      ],
    );
  }
}
