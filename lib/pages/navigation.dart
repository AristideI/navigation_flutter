import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:navigation/pages/Profile_page.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/search_page.dart';
import 'package:navigation/pages/settings_page.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  var _selectedIndex = 0;

  static const screens = [
    HomePage(),
    SearchPage(),
    SettingPage(),
    ProfilePage(),
  ];

  void changeScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: GNav(
            gap: 10,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: const Color.fromARGB(255, 47, 47, 47),
            padding: const EdgeInsets.all(16),
            tabBorderRadius: 40,
            onTabChange: changeScreen,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(icon: Icons.settings, text: 'Settings'),
              GButton(icon: Icons.person, text: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
