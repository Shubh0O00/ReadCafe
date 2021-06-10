import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:read_cafe/searchBar.dart';

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
  List list = [
    "The Alchemist",
    "Wings of Fire",
    "Secret Seven",
    "Sherlock Holmes",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Row(
          children: [
            Expanded(flex: 1, child: Text("ReadCafe")),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: GFSearchBar(
                  searchBoxInputDecoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    hintText: "Search here ...",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                  searchList: list,
                  searchQueryBuilder: (query, list) {
                    return list
                        .where((item) =>
                            '$item'.toLowerCase().contains(query.toLowerCase()))
                        .toList();
                  },
                  overlaySearchListItemBuilder: (item) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        '$item',
                        style: const TextStyle(fontSize: 18),
                      ),
                    );
                  },
                  onItemSelected: (item) {
                    setState(() {
                      print('$item');
                    });
                  },
                ),
              ),
            )
          ],
        ),

        actions: [
          ElevatedButton.icon(
              onPressed: () {}, icon: Icon(Icons.home), label: Text('Home')),
          ElevatedButton.icon(
              onPressed: () {}, icon: Icon(Icons.book), label: Text('About')),
          ElevatedButton.icon(
              onPressed: () {}, icon: Icon(Icons.chat), label: Text('Chat')),
          ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.more_vert_outlined),
              label: Text(""))
        ],
      ),

      //body: ,
    );
  }
}
