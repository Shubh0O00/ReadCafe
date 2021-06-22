import 'package:flutter/material.dart';

import 'package:read_cafe/bodySections/searchBar.dart';

import 'body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ReadCafe',

      // add theme options
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),

      // call of homeScreen function
      home: MyHomePage(), //homepage here
    );
  }
}

//example structure

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // to be discussed whether to put or not
      /*drawer: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/1.jpg'), fit: BoxFit.cover),
        ),
        width: MediaQuery.of(context).size.width * 1,
        child: Drawer(),
      ),*/

      // code for appbar

      appBar: AppBar(
        //search bar in title function in SearchBar.dart
        title: SearchBar(),

        // icons of home screen
        actions: [
          ElevatedButton.icon(
            onPressed: () {
              //add functionality here
            },
            icon: Icon(Icons.home),
            label: Text('Home'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              //add functionality here
            },
            icon: Icon(Icons.book),
            label: Text('About'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              //add functionality here
            },
            icon: Icon(Icons.chat),
            label: Text('Chat'),
          ),
          ElevatedButton.icon(
              onPressed: () {
                //add functionality here
              },
              icon: Icon(Icons.more_vert_outlined),
              label: Text(""))
        ],
      ),

      // see parallax swipper

      body: MainBody(),
    );
  }
}
