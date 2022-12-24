import 'package:flutter/material.dart';
import 'pages/account.dart';
import 'pages/home.dart';
import 'pages/reels.dart';
import 'pages/search.dart';
import 'pages/shop.dart';
// ignore_for_file: prefer_const_constructors

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [
    Home(),
    Search(),
    Reels(),
    Shop(),
    MyAccount(),
  ];
  int selectedIndex = 0;
  void _navigateBottomNavbar(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: _navigateBottomNavbar,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: 'reels'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'My Account'),
          ]),
    );
  }
}
