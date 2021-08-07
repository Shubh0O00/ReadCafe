import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

// in this page we will make the working of appbar

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
// list made for testing
  final List list = [
    "The Alchemist",
    "Wings of Fire",
    "Secret Seven",
    "Sherlock Holmes",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      // layout of search bar
      // one row two expanded means 25% width of title to ReadCafe title
      // 75% to the search bar
      children: [
        Expanded(
          flex: 1,
          child: Wrap(
            children: [
              Row(
                children: <Widget>[
                  //to add 'Read' on the screen
                  Text(
                    "Read",
                    textAlign: TextAlign.left, //to align the text on left
                    style:
                        //for text styling
                        TextStyle(
                      color: Colors.white, //text color
                      //text size
                      fontWeight: FontWeight.bold, //bold text
                    ),
                  ),
                  //to add 'Cafe' on the screen
                  Text(
                    "Cafe",
                    textAlign: TextAlign.left, //to align the text on left
                    style:
                        //for text styling
                        TextStyle(
                      color: Colors.yellow[500], //text color
                      //text size
                      fontWeight: FontWeight.bold, //bold text
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            //GFsearchBar from GetWidget library
            child: GFSearchBar(
              searchBoxInputDecoration: InputDecoration(
                // all decoration part of searchBar
                suffixIcon: Icon(Icons.search),
                hintText: "Search here ...",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
              ),

              //list defined above to be tested
              searchList: list,
              searchQueryBuilder: (query, list) {
                return list
                    .where((item) =>
                        '$item'.toLowerCase().contains(query.toLowerCase()))
                    .toList();
              },
              overlaySearchListItemBuilder: (item) {
                return Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    '$item',
                    style: const TextStyle(fontSize: 18),
                  ),
                );
              },

              // this function is used to print selected items in console
              onItemSelected: (item) {
                setState(() {
                  print('$item');
                });
              },
            ),
          ),
        )
      ],
    );
  }
}
