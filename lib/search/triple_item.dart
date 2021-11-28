import 'package:flutter/cupertino.dart';

class TripleItem extends StatelessWidget {
  const TripleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          flex: 1,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/waves.jpg',
                        ),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/waves.jpg',
                        ),
                        fit: BoxFit.cover)),
              ),
            ],
          )),
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
