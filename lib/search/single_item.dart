import 'package:flutter/cupertino.dart';

class SingleItem extends StatelessWidget {
  const SingleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/waves.jpg',
              ),
              fit: BoxFit.cover)),
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
    );
  }
}
