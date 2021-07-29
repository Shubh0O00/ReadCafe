import 'dart:ui';
import 'package:read_cafe/api/bookClass.dart';
import 'package:read_cafe/api/api.dart';
import 'package:flutter/material.dart';

//class Footer to create a container for footer of the website
class Footer extends StatefulWidget {
  Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  final String bullet = "\u2022 ";

  Future<List<BookClass>> b = fetchBooks();

  @override
  void initState() {
    super.initState();
    b = fetchBooks();
  }

  @override
  //Widget to return a Container for footer
  Widget build(BuildContext context) {
    //column to add widget in a column
    return Column(
      children: <Widget>[
        Container(
            //Row to divide the Container
            child: Wrap(
              alignment: (MediaQuery.of(context).size.width >= 1536)
                  ? WrapAlignment.start
                  : WrapAlignment.center,
              children: <Widget>[
                //Container to create a space of 1/3 of the screen to divide the previous container into 3 parts
                //container1
                Container(
                  width: 480,
                  margin: EdgeInsets.all(10.0), //5 pxl margin
                  padding: EdgeInsets.all(10.0), //5 pxl padding
                  child:
                      //to make the column in center
                      Center(
                    //to add widgets in a column fashion
                    child: Column(
                      children: <Widget>[
                        //container 1 to add 'ReadCafe' text on the left footer section
                        Container(
                          width: double
                              .infinity, //to cover the available entire space
                          height: 50.0, //height for text
                          child:
                              //Row to divide the Text ReadCafe in two for different effects
                              Row(
                            children: <Widget>[
                              //to add 'Read' on the screen
                              Text(
                                "Read",
                                textAlign:
                                    TextAlign.left, //to align the text on left
                                style:
                                    //for text styling
                                    TextStyle(
                                  color: Colors.white, //text color
                                  fontSize: 30.0, //text size
                                  fontWeight: FontWeight.bold, //bold text
                                ),
                              ),
                              //to add 'Cafe' on the screen
                              Text(
                                "Cafe",
                                textAlign:
                                    TextAlign.left, //to align the text on left
                                style:
                                    //for text styling
                                    TextStyle(
                                  color: Colors.yellow[500], //text color
                                  fontSize: 30.0, //text size
                                  fontWeight: FontWeight.bold, //bold text
                                ),
                              ),
                            ],
                          ),
                        ),
                        //container2 to add the description of the website
                        Container(
                          width: double
                              .infinity, //to cover the available entire space
                          height: 80.0, //height for text
                          child:
                              //to add the text
                              Text(
                            "ReadCafe is Website for Review and Recommendation of famous books. Reviewing of books is user based and recommendation is based on the previous data to help users find books to read.",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        //container3 to add company number
                        Container(
                          width: double
                              .infinity, //to cover the available entire space
                          height: 25.0, //height for text
                          margin: EdgeInsets.only(top: 1.0, bottom: 1.0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.phone,
                                  color: Colors.white), // icon of a telephone
                              //sized box to create space
                              SizedBox(
                                height: 25,
                                width: 4,
                              ),
                              //Text widget to add the phone number
                              Text(
                                "123-456-789",
                                style: TextStyle(
                                  color: Colors.white, //text color
                                  fontWeight: FontWeight.bold, //bold text
                                ),
                              ),
                            ],
                          ),
                        ),
                        //container4 to add company mail
                        Container(
                          width: double
                              .infinity, //to cover the available entire space
                          height: 25.0, //height for text
                          margin: EdgeInsets.only(top: 1.0, bottom: 1.0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.mail,
                                  color: Colors.white), //icon of a mail
                              //sized box to create space
                              SizedBox(
                                height: 25,
                                width: 4,
                              ),
                              //text to add the company email id
                              Text(
                                "abc@xyz.co.in",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        //container5 to add contact Icon buttons
                        Container(
                          width: double
                              .infinity, //to cover the available entire space
                          height: 45.0, //height for text
                          margin: EdgeInsets.only(top: 1.0, bottom: 1.0),
                          child: Row(
                            children: <Widget>[
                              //Icon buttons to add different icons which can be pressed to get redirected to desired location
                              //sized boxes to add spaces in between of icons placed
                              IconButton(
                                onPressed: () {
                                  //add functionality here
                                },
                                icon: Icon(
                                  Icons.facebook_rounded,
                                  color: Colors.white,
                                  size: 35.0,
                                ),
                              ),
                              SizedBox(
                                height: 25,
                                width: 4,
                              ),
                              IconButton(
                                onPressed: () {
                                  //add functionality here
                                },
                                icon: Icon(
                                  Icons.image_rounded,
                                  color: Colors.white,
                                  size: 35.0,
                                ),
                              ),
                              SizedBox(
                                height: 25,
                                width: 4,
                              ),
                              IconButton(
                                onPressed: () {
                                  //add functionality here
                                },
                                icon: Icon(
                                  Icons.play_arrow_rounded,
                                  color: Colors.white,
                                  size: 35.0,
                                ),
                              ),
                              SizedBox(
                                height: 25,
                                width: 4,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //container2
                Container(
                  width: 480,
                  margin: EdgeInsets.all(10.0), //5 pxl margin
                  padding: EdgeInsets.all(10.0), //5 pxl padding
                  color: Colors.brown, //color of the small container
                  child: Column(
                    children: <Widget>[
                      //to add the heading to the section
                      Container(
                        width: double
                            .infinity, //to cover the available entire space
                        height: 40.0, //height for text
                        child: Text(
                          "Quick Links",
                          textAlign:
                              TextAlign.center, //to align the text in center
                          style:
                              //for text styling
                              TextStyle(
                            color: Colors.white, //text color
                            fontSize: 25.0, //text size
                            fontWeight: FontWeight.bold, //bold text
                          ),
                        ),
                      ),
                      //container below this is to add the list of text buttons in the middle seciton of the footer for hyperlinks to other pages

                      //container1
                      Container(
                        width: double
                            .infinity, //to cover the available entire space
                        height: 30.0, //height for text
                        child: Row(
                          //to arrange the texts in a row
                          children: <Widget>[
                            // to add a blank space for alignment
                            SizedBox(
                              height: 30.0,
                              width: 160.0,
                            ),
                            //adding a bullet to the screen
                            Text(
                              bullet, //define previously
                              //for text styling
                              style: TextStyle(
                                color: Colors.white, //bullet color
                                fontSize: 30.0, //bullet size
                              ),
                            ),
                            //to add blank space for alignment
                            SizedBox(
                              height: 30.0,
                              width: 5.0,
                            ),
                            //to add the hyperlink
                            TextButton(
                              onPressed: () {
                                //add funtionality here
                              },
                              child:
                                  //text in the button
                                  Text(
                                "Contact",
                                textAlign: TextAlign
                                    .center, //to align the text on center
                                style:
                                    //for text styling
                                    TextStyle(
                                  color: Colors.white, //text color
                                  fontSize: 15.0, //text size
                                  fontWeight: FontWeight.bold, //bold text
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //container2
                      Container(
                        width: double
                            .infinity, //to cover the available entire space
                        height: 30.0, //height for text
                        child: Row(
                          //to arrange the texts in a row
                          children: <Widget>[
                            // to add a blank space for alignment
                            SizedBox(
                              height: 30.0,
                              width: 160.0,
                            ),
                            //adding a bullet to the screen
                            Text(
                              bullet, //define previously
                              //for text styling
                              style: TextStyle(
                                color: Colors.white, //bullet color
                                fontSize: 30.0, //bullet size
                              ),
                            ),
                            //to add blank space for alignment
                            SizedBox(
                              height: 30.0,
                              width: 5.0,
                            ),
                            //to add the hyperlink
                            TextButton(
                              onPressed: () {
                                //add funtionality here
                              },
                              child:
                                  //text in the button
                                  Text(
                                "Complaint",
                                textAlign: TextAlign
                                    .center, //to align the text on center
                                style:
                                    //for text styling
                                    TextStyle(
                                  color: Colors.white, //text color
                                  fontSize: 15.0, //text size
                                  fontWeight: FontWeight.bold, //bold text
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //container3
                      Container(
                        width: double
                            .infinity, //to cover the available entire space
                        height: 30.0, //height for text
                        child: Row(
                          //to arrange the texts in a row
                          children: <Widget>[
                            // to add a blank space for alignment
                            SizedBox(
                              height: 30.0,
                              width: 160.0,
                            ),
                            //adding a bullet to the screen
                            Text(
                              bullet, //define previously
                              //for text styling
                              style: TextStyle(
                                color: Colors.white, //bullet color
                                fontSize: 30.0, //bullet size
                              ),
                            ),
                            //to add blank space for alignment
                            SizedBox(
                              height: 30.0,
                              width: 5.0,
                            ),
                            //to add the hyperlink
                            TextButton(
                              onPressed: () {
                                //add funtionality here
                              },
                              child:
                                  //text in the button
                                  Text(
                                "Register",
                                textAlign: TextAlign
                                    .center, //to align the text on center
                                style:
                                    //for text styling
                                    TextStyle(
                                  color: Colors.white, //text color
                                  fontSize: 15.0, //text size
                                  fontWeight: FontWeight.bold, //bold text
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //container4
                      Container(
                        width: double
                            .infinity, //to cover the available entire space
                        height: 30.0, //height for text
                        child: Row(
                          //to arrange the texts in a row
                          children: <Widget>[
                            // to add a blank space for alignment
                            SizedBox(
                              height: 30.0,
                              width: 160.0,
                            ),
                            //adding a bullet to the screen
                            Text(
                              bullet, //define previously
                              //for text styling
                              style: TextStyle(
                                color: Colors.white, //bullet color
                                fontSize: 30.0, //bullet size
                              ),
                            ),
                            //to add blank space for alignment
                            SizedBox(
                              height: 30.0,
                              width: 5.0,
                            ),
                            //to add the hyperlink
                            TextButton(
                              onPressed: () {
                                //add funtionality here
                              },
                              child:
                                  //text in the button
                                  Text(
                                "GitHub Repository",
                                textAlign: TextAlign
                                    .center, //to align the text on center
                                style:
                                    //for text styling
                                    TextStyle(
                                  color: Colors.white, //text color
                                  fontSize: 15.0, //text size
                                  fontWeight: FontWeight.bold, //bold text
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //container5
                      Container(
                        width: double
                            .infinity, //to cover the available entire space
                        height: 30.0, //height for text
                        child: Row(
                          //to arrange the texts in a row
                          children: <Widget>[
                            // to add a blank space for alignment
                            SizedBox(
                              height: 30.0,
                              width: 160.0,
                            ),
                            //adding a bullet to the screen
                            Text(
                              bullet, //define previously
                              //for text styling
                              style: TextStyle(
                                color: Colors.white, //bullet color
                                fontSize: 30.0, //bullet size
                              ),
                            ),
                            //to add blank space for alignment
                            SizedBox(
                              height: 30.0,
                              width: 5.0,
                            ),
                            //to add the hyperlink
                            TextButton(
                              onPressed: () {
                                //add funtionality here
                              },
                              child:
                                  //text in the button
                                  Text(
                                "Terms and Conditions",
                                textAlign: TextAlign
                                    .center, //to align the text on center
                                style:
                                    //for text styling
                                    TextStyle(
                                  color: Colors.white, //text color
                                  fontSize: 15.0, //text size
                                  fontWeight: FontWeight.bold, //bold text
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //container3
                Container(
                  width: 480,
                  margin: EdgeInsets.all(10.0), //5 pxl margin
                  padding: EdgeInsets.all(10.0), //5 pxl padding
                  color: Colors.brown, //color of the small container
                  child: Column(
                    children: <Widget>[
                      //to add the heading to the section
                      Container(
                        width: double
                            .infinity, //to cover the available entire space
                        height: 40.0, //height for text
                        child: Text(
                          "Contact Us",
                          textAlign:
                              TextAlign.center, //to align the text in center
                          style:
                              //for text styling
                              TextStyle(
                            color: Colors.white, //text color
                            fontSize: 25.0, //text size
                            fontWeight: FontWeight.bold, //bold text
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            height: (MediaQuery.of(context).size.width >= 1536)
                ? 280
                : ((MediaQuery.of(context).size.width >= 1024)
                    ? 560
                    : 840), //height of the main container
            width: double.infinity, //to cover the entire screen
            color: Colors.brown //color of the main container
            ),

        //container to create the last section of footer with text
        Container(
          color: Colors.brown[400], //for a lighter shade of brown
          width: double.infinity, // to aquire the entire screen width
          height: 50.0, //container of height 50pxl
          child:
              //to add the text widget in center
              Center(
            child:
                // to make the text in Text widget transparent
                Opacity(
              opacity: 0.5, //50% opacity
              child:
                  //to add the text in the container
                  Text(
                "@XYZ Company | Designed by Aniket and Shubham",
                style: TextStyle(
                  color: Colors.white, //text color
                  fontWeight: FontWeight.bold, //bold text
                  fontSize: 15.0, //text size
                  letterSpacing: 1.0, //space b/w letters
                ),
              ),
            ),
          ),
        ),

        //Testing api
        //test successful
        //List view can be buit on this architecture
        //Using Future builder is necessary
        /*
        Container(
            color: Colors.brown[400], //for a lighter shade of brown
            width: double.infinity, // to aquire the entire screen width
            height: 500.0, //container of height 50pxl
            child: FutureBuilder<List<BookClass>>(
              future: b,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data![0].title);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            )),*/
      ],
    );
  }
}
