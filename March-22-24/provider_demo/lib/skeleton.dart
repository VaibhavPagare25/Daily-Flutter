import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider_demo/pages/challenge.dart';
import 'package:provider_demo/pages/change.dart';
import 'package:provider_demo/pages/home_page.dart';

class Skeleton extends StatefulWidget {
  const Skeleton({super.key});

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
  int _selectedIndex = 0;
  List<Widget> widgetOptions = const [
    HomePage(),
    Change(),
    Challenge(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: GNav(
        style: GnavStyle.google,
        rippleColor: Colors.grey[300]!,
        hoverColor: Colors.grey[100]!,
        gap: 2,
        activeColor: Colors.black,
        iconSize: 24,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
        duration: const Duration(milliseconds: 400),
        tabBackgroundColor: Colors.cyan,
        color: Colors.black,
        tabs: const [
          GButton(
            icon: LineIcons.home,
            text: "Home",
          ),
          GButton(
            icon: LineIcons.chessPawn,
            text: "Change",
          ),
          GButton(
            icon: LineIcons.android,
            text: "Challenge",
          )
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
