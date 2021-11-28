// ignore_for_file: prefer_const_constructors

import 'package:eco_steps/leaderboard/LeaderboardScreen.dart';
import 'package:eco_steps/profile/ProfileScren.dart';
import 'package:eco_steps/search/SearchScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  // @override
  // void initState(){
  //   super.initState();
  //   goToOnboarding(context);
  // }
  // // goToOnboarding(context);
  //
  // void goToOnboarding(context) => Navigator.of(context).pushReplacement(
  //   MaterialPageRoute(builder:(_) => OnboardingScreen()),
  // );

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            onTabTapped(2);
          },
          tooltip: "Add Food",
          child: Icon(Icons.add_circle_rounded,
              color: Colors.greenAccent[200], size: 55),
          elevation: 0.5,
          backgroundColor: Colors.white,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
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
