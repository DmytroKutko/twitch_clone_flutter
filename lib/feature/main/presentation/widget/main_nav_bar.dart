import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function onItemTapped;
  const MainNavBar(
      {super.key, required this.onItemTapped, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.shifting,
      elevation: 1,
      showUnselectedLabels: true,
      unselectedLabelStyle: const TextStyle(color: Colors.black),
      onTap: (value) => onItemTapped(value),
      currentIndex: selectedIndex,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/following_icon.svg",
            colorFilter: ColorFilter.mode(
              selectedIndex == 0 ? Colors.purple : Colors.black,
              BlendMode.srcIn,
            ),
          ),
          label: "Following",
        ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/discover_icon.svg",
              colorFilter: ColorFilter.mode(
                selectedIndex == 1 ? Colors.purple : Colors.black,
                BlendMode.srcIn,
              ),
            ),
            label: "Discover"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/browse_icon.svg",
              height: 24,
              width: 24,
              colorFilter: ColorFilter.mode(
                selectedIndex == 2 ? Colors.purple : Colors.black,
                BlendMode.srcIn,
              ),
            ),
            label: "Browse"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/search_icon.svg",
              colorFilter: ColorFilter.mode(
                selectedIndex == 3 ? Colors.purple : Colors.black,
                BlendMode.srcIn,
              ),
            ),
            label: "Searh"),
      ],
    );
  }
}
