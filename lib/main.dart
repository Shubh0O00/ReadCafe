import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:read_cafe/searchBar.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
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

      appBar: AppBar(
        //search bar in title
        title: SearchBar(),
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

      body: MainBody(),
    );
  }
}
