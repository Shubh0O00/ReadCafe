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
    b = fetchBooks(limit);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //to cover the entire screen
      height: MediaQuery.of(context).size.width * 0.41,

      child: FutureBuilder<List<BookClass>>(
        future: b,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(5.0),
                  padding: EdgeInsets.all(5.0),
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                  child: Center(
                    child: Text(snapshot.data![index].title),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
