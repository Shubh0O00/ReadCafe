import 'package:flutter/material.dart';

//class Footer to create a container for footer of the website
class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  //Widget to return a Container for footer
  Widget build(BuildContext context) {
    return Container(
      //Row to divide the Container
      child: Row(
        children: <Widget>[
          //Container to create a space of 1/3 of the screen to divide the previous container into 3 parts
          //container1
          Container(
            width: (MediaQuery.of(context).size.width / 3) -
                10, //(-10) for the margin and paddings
            margin: EdgeInsets.all(5.0), //5 pxl margin
            padding: EdgeInsets.all(5.0), //5 pxl padding
            color: Colors.black26, //color of the small container
          ),
          //container1
          Container(
            width: (MediaQuery.of(context).size.width / 3) -
                10, //(-10) for the margin and paddings
            margin: EdgeInsets.all(5.0), //5 pxl margin
            padding: EdgeInsets.all(5.0), //5 pxl padding
            color: Colors.black26, //color of the small container
          ),
          //container1
          Container(
            width: (MediaQuery.of(context).size.width / 3) -
                10, //(-10) for the margin and paddings
            margin: EdgeInsets.all(5.0), //5 pxl margin
            padding: EdgeInsets.all(5.0), //5 pxl padding
            color: Colors.black26, //color of the small container
          ),
        ],
      ),
      height: 100.0, //height of the main container
      width: double.infinity, //to cover the entire screen
      color: Colors.black38, //color of the main container
    );
  }
}
