import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttericon/elusive_icons.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/leafs.png"))),
        padding: const EdgeInsets.only(left: 40, top: 50, right: 20),
        width: double.infinity,
        height: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 80,
                padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(
                        Elusive.leaf,
                        color: Colors.green,
                      ),
                      Text(
                        '55000',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ]),
              ),
            ),
            Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/profile.png'),
                      fit: BoxFit.fill)),
            ),
            const SizedBox(height: 10),
            const Text(
              'Sarah Parker',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              '120 Friends',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      Positioned(
        left: 25,
        right: 25,
        top: 330,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.all(Radius.circular(15))),
          height: 30,
          child: const DefaultTabController(
            length: 3,
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              indicatorWeight: 0,
              tabs: [
                Tab(
                  text: "Today",
                ),
                Tab(
                  text: "Week",
                ),
                Tab(
                  text: "Year",
                )
              ],
              indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
          ),
        ),
      ),
    ]);
  }
}
