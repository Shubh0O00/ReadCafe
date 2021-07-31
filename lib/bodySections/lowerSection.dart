import 'package:flutter/material.dart';
import 'package:read_cafe/api/bookClass.dart';
import 'package:read_cafe/api/api.dart';

class Lower extends StatefulWidget {
  const Lower({Key? key}) : super(key: key);

  @override
  _LowerState createState() => _LowerState();
}

class _LowerState extends State<Lower> {
  late Future<List<BookClass>> b;
  int limit = 0;

  @override
  void initState() {
    super.initState();
    //b = fetchBooks(limit);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //to cover the entire screen
      height: MediaQuery.of(context).size.width * 0.41,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            //image by url
            decoration: BoxDecoration(color: Colors.amber),
          );
        },
      ),
    );
  }
}
