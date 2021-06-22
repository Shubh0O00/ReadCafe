import 'package:flutter/material.dart';

//class Footer to create a container for footer of the website
class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  //Widget to return a Container for footer
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            child: //Row to divide the Container
                Row(
              children: <Widget>[
                //Container to create a space of 1/3 of the screen to divide the previous container into 3 parts
                //container1
                Container(
                  width: (MediaQuery.of(context).size.width / 3) -
                      10, //(-10) for the margin and paddings
                  margin: EdgeInsets.all(5.0), //5 pxl margin
                  padding: EdgeInsets.all(5.0), //5 pxl padding
                  color: Colors.brown, //color of the small container
                ),
                //container1
                Container(
                  width: (MediaQuery.of(context).size.width / 3) -
                      10, //(-10) for the margin and paddings
                  margin: EdgeInsets.all(5.0), //5 pxl margin
                  padding: EdgeInsets.all(5.0), //5 pxl padding
                  color: Colors.brown, //color of the small container
                ),
                //container1
                Container(
                  width: (MediaQuery.of(context).size.width / 3) -
                      10, //(-10) for the margin and paddings
                  margin: EdgeInsets.all(5.0), //5 pxl margin
                  padding: EdgeInsets.all(5.0), //5 pxl padding
                  color: Colors.brown, //color of the small container
                ),
              ],
            ),
            height: 200.0, //height of the main container
            width: double.infinity, //to cover the entire screen
            color: Colors.brown //color of the main container
            ),
        Container(
          color: Colors.brown[400],
          width: double.infinity,
          height: 50.0,
          child: Center(
            child: Text(
              "@XYZ Company | Designed by Aniket and Shubham",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
