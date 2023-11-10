import 'package:empathi_care/view_model/navigator_provider.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget buildBottomNavigationBar(BuildContext context) {
  final navigation_provider =
      Provider.of<NavigationProvider>(context, listen: false);

  return FlashyTabBar(
    animationCurve: Curves.linear,
    iconSize: 30,
    showElevation: false,
    selectedIndex: navigation_provider.currentIndex,
    onItemSelected: (index) {
      navigation_provider.setIndex(index);
    },
    items: [
      FlashyTabBarItem(
        icon: Icon(Icons.home),
        title: Text('Beranda'),
      ),
      FlashyTabBarItem(
        icon: Icon(Icons.article),
        title: Text('Konseling'),
      ),
      FlashyTabBarItem(
        icon: Icon(Icons.chat),
        title: Text('Chating'),
      ),
      FlashyTabBarItem(
        icon: Icon(Icons.access_time),
        title: Text('Riwayat'),
      ),
      FlashyTabBarItem(
        icon: Icon(Icons.person_pin),
        title: Text('Profile'),
      ),
    ],
  );
}
