import 'package:empathi_care/view/screen/screen_dua.dart';
import 'package:empathi_care/view/screen/screen_empat.dart';
import 'package:empathi_care/view/screen/screen_lima.dart';
import 'package:empathi_care/view/screen/screen_satu.dart';
import 'package:empathi_care/view/screen/screen_tiga.dart';
import 'package:empathi_care/view/widget/navigation_bottom_bar_widget.dart';
import 'package:empathi_care/view_model/navigator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RoutesScreen extends StatefulWidget {
  const RoutesScreen({super.key});

  @override
  State<RoutesScreen> createState() => _RoutesScreenState();
}

class _RoutesScreenState extends State<RoutesScreen> {
  @override
  Widget build(BuildContext context) {
    final navigation_provider = Provider.of<NavigationProvider>(context);

    return Scaffold(
      body: IndexedStack(
        index: navigation_provider.currentIndex,
        children: [
          ScreenSatu(),
          ScreenDua(),
          ScreenTiga(),
          ScreenEmpat(),
          ScreenLima(),
        ],
      ),
      bottomNavigationBar: buildBottomNavigationBar(context),
    );
  }
}
