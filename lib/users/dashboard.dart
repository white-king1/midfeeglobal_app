// ignore_for_file: prefer_const_constructors, unused_import, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:flutter_html/flutter_html.dart';
import 'package:midfeeglobal_app/main.dart';
import 'package:midfeeglobal_app/users/home.dart';
import 'package:midfeeglobal_app/users/menu.dart';
import 'package:midfeeglobal_app/users/notifications.dart';
import 'package:midfeeglobal_app/users/profile.dart';
import 'package:midfeeglobal_app/utils/colors.dart';

class Dashboard extends StatefulWidget {
   Dashboard({Key? key}) : super(key: key);

  

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List pages = [
    Home(),
    Profile(),
    Notifications(),
    Menu(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 10,
        selectedFontSize: 16,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: AppColors.purpleColor,
        unselectedItemColor: AppColors.blueColor.withOpacity(0.5),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        elevation: 0,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
          BottomNavigationBarItem(
              label: 'Notifications', icon: Icon(Icons.notification_add)),
          BottomNavigationBarItem(
              label: 'Menu', icon: Icon(Icons.menu)),
        ],
      ),
    );
  }
}
