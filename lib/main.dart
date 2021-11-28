// ignore_for_file: prefer_const_constructors
import 'package:eco_steps/leaderboard/leaderboard_screen.dart';
import 'package:eco_steps/profile/profile_screen.dart';

import 'package:eco_steps/search/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'search/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[100]),
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    ProfileScreen(),
    SearchScreen(),
    LeaderboardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          // onTap: onTappedBar,
          // currentIndex: _index,
          onTap: onTabTapped,
          currentIndex: _currentIndex,

          items: const [
            BottomNavigationBarItem(
              label: 'Fridge',
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: 'Recipes',
              icon: Icon(
                Icons.search,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Saviours',
              icon: Icon(Icons.leaderboard),
            ),
          ],
        ));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
