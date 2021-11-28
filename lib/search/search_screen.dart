import 'package:eco_steps/search/double_item.dart';
import 'package:eco_steps/search/single_item.dart';
import 'package:eco_steps/search/triple_item.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  List<Widget> widgets = [];
  SearchScreen({Key? key}) : super(key: key) {
    widgets = generateDummies(50);
  }

  @override
  Widget build(BuildContext context) {
    return getBody(context);
  }

  Widget getBody(context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Text('search'),
          Expanded(
            child: ListView(
              children: widgets,
            ),
          )
        ],
      ),
    );
  }

  List<Widget> generateDummies(height) {
    List<Widget> ret = [];
    for (int i = 0; i < 5; i++) {
      ret.add(TripleItem());
      ret.add(SingleItem());
      ret.add(DoubleItem());
    }
    return ret;
  }
}
