import 'package:flutter/material.dart';



class SearchScreen extends StatelessWidget  {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    var size = MediaQuery.of(SizeofAssets).size;
    return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: size.width - 30,
                    height: 45,

                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white.withOpacity(0.3),
                          )),
                      style: TextStyle(color: Colors.white.withOpacity(0.3)),
                      cursorColor: Colors.white.withOpacity(0.3),
                    ),

                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            ),
            SizedBox(height: 15,),
            Wrap(
              spacing: 1,
              runSpacing: 1,
              //children: List.generate(Images.length, (index){ //Tie in the showcase assets here
                //return Container(
                  //width: (size.width-3)/3,
                  //height: (size.width-3)/3,
                  //decoration: BoxDecoration(
                      //image: DecorationImage(image: NetworkImage(searchImages[index]),fit: BoxFit.cover)
                  ),
                );
              }),
            )
          ],
        ));
  }
}




