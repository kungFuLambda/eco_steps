import 'package:flutter/cupertino.dart';

class TripleItem extends StatelessWidget {
  const TripleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          flex: 2,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/waves.jpg',
                        ),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 6 - 5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/waves.jpg',
                        ),
                        fit: BoxFit.cover)),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
              ),
            ],
          )),
      SizedBox(
        width: 5,
      ),
      Expanded(
        flex: 3,
        child: Container(
          height: MediaQuery.of(context).size.height / 3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/waves.jpg',
                  ),
                  fit: BoxFit.cover)),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
        ),
      ),
    ]);
  }
}
