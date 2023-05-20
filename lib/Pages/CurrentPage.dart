import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sorecover/Pages/Communities.dart';
import 'package:sorecover/Pages/DashBoard.dart';

class CurrentPage extends StatefulWidget {
  const CurrentPage({super.key});

  @override
  State<CurrentPage> createState() => _CurrentPageState();
}

class _CurrentPageState extends State<CurrentPage> {
  Color navigationBarColor = Colors.cyan;
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const DashBoard(),
    const Communities(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: _pages[_currentIndex],
      bottomNavigationBar: FloatingNavbar(
        selectedBackgroundColor: Colors.cyanAccent,
        backgroundColor: Colors.cyanAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.cyan,
        borderRadius: 50,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          FloatingNavbarItem(
            icon: Icons.home,
            title: 'Accueil',
          ),
          FloatingNavbarItem(
            icon: Icons.group,
            title: 'Communautés',
          ),
          FloatingNavbarItem(
            icon: Icons.explore,
            title: 'Explorer',
          ),
          FloatingNavbarItem(
            icon: Icons.favorite,
            title: 'Favoris',
          ),
        ],
      ),
    );
  }
}
