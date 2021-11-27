import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/octicons_icons.dart';

class LeaderboardCard extends StatelessWidget {
  final place;
  final name;
  final score;
  final isProfile;
  final possibleIcon = [
    Icon(Octicons.triangle_up, color: Colors.green),
    Icon(Octicons.triangle_down, color: Colors.red),
    null,
  ];
  List<String> possiblePics = [
    'assets/profile1.png',
    'assets/profile7].png',
    'assets/profile5.png',
    'assets/profile6.png',
    'assets/profile4.png',
    'assets/profile3.png',
    'assets/profile2.png',
  ];
  LeaderboardCard({this.name, this.place, this.score, this.isProfile = false});

  @override
  Widget build(BuildContext context) {
    var i = possibleIcon[Random().nextInt(3)];
    String picName = possiblePics[Random().nextInt(7)];
    return Container(
      margin: EdgeInsets.fromLTRB(0, 7, 0, 7),
      padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: isProfile ? Colors.teal[200] : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(place.toString()), if (i != null) i],
            ),
          ),
          Expanded(
            child: Image(
              alignment: Alignment.centerLeft,
              image: AssetImage(picName),
              width: 40,
              height: 40,
            ),
          ),
          Expanded(
            child: Text(name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            flex: 2,
          ),
          Expanded(
              child: Text(
            score.toString(),
            textAlign: TextAlign.end,
          )),
          Expanded(
            child: Icon(
              Elusive.leaf,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
