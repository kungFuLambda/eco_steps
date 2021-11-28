import 'package:flutter/cupertino.dart';

class DoubleItem extends StatelessWidget {
  const DoubleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 1,
        child: Container(
          height: MediaQuery.of(context).size.width / 4,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/waves.jpg',
                  ),
                  fit: BoxFit.cover)),
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          height: MediaQuery.of(context).size.width / 4,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/waves.jpg',
                  ),
                  fit: BoxFit.cover)),
        ),
      ),
    ]);
  }
}
