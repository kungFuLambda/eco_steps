import 'package:eco_steps/profile/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ProfileHeader(),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Column(children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        padding: const EdgeInsets.all(10),
                        height: 220,
                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        width: 150,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Eco Steps '),
                                Icon(
                                  Elusive.leaf,
                                  color: Colors.green,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Image(
                                image: AssetImage('assets/progressBar.png'))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 5, 20),
                        padding: const EdgeInsets.all(10),
                        height: 100,
                        width: 150,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'CO2 ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  FontAwesome5.car_side,
                                  color: Colors.redAccent,
                                  size: 18,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              '865',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text('Grams')
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                        padding: EdgeInsets.all(10),
                        height: 100,
                        width: 150,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Leaderboard ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Icon(
                                  Entypo.trophy,
                                  color: Colors.yellow,
                                )
                              ],
                            ),
                            Text('2nd', style: TextStyle(fontSize: 30))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(15),
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                height: 140,
                width: 325,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          FontAwesome5.car_side,
                          color: Colors.redAccent,
                          size: 18,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          '7,3km',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        SizedBox(
                          width: 95,
                        ),
                        Text(
                          '567 CO2',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.right,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          FontAwesome5.train,
                          color: Colors.blue,
                          size: 18,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          '7,3km',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        SizedBox(
                          width: 95,
                        ),
                        Text(
                          '567 CO2',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.right,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          FontAwesome5.walking,
                          color: Colors.purple,
                          size: 18,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          '7,3km',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        SizedBox(
                          width: 95,
                        ),
                        Text(
                          '567 CO2',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.right,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
