import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:day_38_with_flutter/pages/Tiket_page.dart';
import 'package:day_38_with_flutter/pages/movies_page.dart';
import 'package:day_38_with_flutter/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _pages = [
    MoviesPage(),
    TiketPage(),
    ProfilePage(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 70,
        margin: EdgeInsets.symmetric(horizontal: 35),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(80),
            topRight: Radius.circular(80),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(80),
            topRight: Radius.circular(100),
          ),
          child: BottomNavigationBar(
            elevation: 10,
            backgroundColor: Colors.black,
            iconSize: 28,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedIconTheme: IconThemeData(color: Colors.white),
            unselectedIconTheme: IconThemeData(color: Colors.grey),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  _currentIndex != 0 ? Icons.home_outlined : Icons.home,
                ),
                label: "k",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  _currentIndex != 1
                      ? Icons.shopping_bag_outlined
                      : Icons.shopping_bag_rounded,
                ),
                label: "k",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  _currentIndex == 2 ? Icons.person : Icons.person_outlined,
                ),
                label: "k",
              ),
            ],
            currentIndex: _currentIndex,
            onTap: (p0) {
              setState(() {
                _currentIndex = p0;
              });
            },
          ),
        ),
      ),
    );
  }
}
