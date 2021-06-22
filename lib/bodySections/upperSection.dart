import 'package:flutter/material.dart';

// from this page we'll return the discussed upper
// part ui using containers ,columns and padded rows
class Upper extends StatefulWidget {
  const Upper({Key? key}) : super(key: key);

  @override
  _UpperState createState() => _UpperState();
}

class _UpperState extends State<Upper> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // here testing how to make the two colums decided in layout.jpeg
      // in first column we'll put a container showing the book selected and
      // in the second column we'll see a vertical 3d list to show people reviews
      children: [
        Column(
          children: [Text("Hi")],
        ),
        Column(
          children: [Text("Hi")],
        )
      ],
    );
  }
}
