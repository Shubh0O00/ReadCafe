import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

// in this page we will make the working of appbar

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final List list = [
    "The Alchemist",
    "Wings of Fire",
    "Secret Seven",
    "Sherlock Holmes",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Text("ReadCafe")),
        Expanded(
          flex: 3,
          child: Container(
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
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
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
    );
  }
}
