import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeaderboardHeader extends StatelessWidget {
  const LeaderboardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/leafs.png"))),
        padding: const EdgeInsets.only(left: 18, top: 50, right: 18),
        width: double.infinity,
        height: 280,
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/profile.png'),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '55000',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text('Sarah_parker',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ))
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Container(
                  height: 160,
                  width: 160,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/profile1.png'),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '65000',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text('Josh_Smith',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ))
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/profile2.png'),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '10500',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text('JReynolds',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ))
              ],
            )
          ],
        ));
  }
}
