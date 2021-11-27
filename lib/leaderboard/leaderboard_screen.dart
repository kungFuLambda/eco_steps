import 'package:eco_steps/leaderboard/leaderboard_card.dart';
import 'package:eco_steps/leaderboard/leaderboard_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  List<Widget> widgets = [];

  LeaderboardScreen({Key? key}) : super(key: key) {
    widgets = generateDummies();
  }

  @override
  Widget build(BuildContext context) {
    if (widgets.isEmpty) generateDummies();
    return Scaffold(
        body: Column(
      children: [
        const LeaderboardHeader(),
        Expanded(
          child: ListView(
            padding: EdgeInsets.fromLTRB(22, 15, 22, 10),
            children: widgets,
          ),
        )
      ],
    ));
  }

  List<Widget> generateDummies() {
    List<Widget> dummies = [
      LeaderboardCard(
        name: 'Josh_Smith',
        place: 1,
        score: 65000,
      ),
      LeaderboardCard(
        name: 'Sarah_parker',
        place: 2,
        score: 55000,
        isProfile: true,
      ),
      LeaderboardCard(
        name: 'JReynolds',
        place: 3,
        score: 10500,
      )
    ];
    const takeOff = 500;
    for (int i = 4; i < 10; i++) {
      dummies.add(LeaderboardCard(
          name: 'User_name', place: i, score: 10500 - i * takeOff));
    }

    return dummies;
  }
}
