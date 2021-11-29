import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoubleItem extends StatelessWidget {
  const DoubleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 2,
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 5, 5, 5),
          height: MediaQuery.of(context).size.height / 5,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/panda.jpg',
                  ),
                  fit: BoxFit.cover)),
        ),
      ),
      SizedBox(
        width: 5,
      ),
      Expanded(
        flex: 3,
        child: Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height / 5,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/bus.jpg',
                  ),
                  fit: BoxFit.cover)),
        ),
      ),
      SizedBox(
        height: 5,
      )
    ]);
  }
}
