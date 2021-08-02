import 'package:flutter/material.dart';
import 'package:read_cafe/api/bookClass.dart';
import 'package:read_cafe/api/api.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
      height: MediaQuery.of(context).size.width * 0.43,
      child: FutureBuilder<List<BookClass>>(
        future: b,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  //image by url
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(snapshot.data![index].selectedFile),
                        fit: BoxFit.contain),
                  ),

                  // adding child rating bar which will be updated by us
                  // it will show the recorded ratings

                  //edit the part within ***
                  //***
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: RatingBar.builder(
                      direction: Axis.horizontal,
                      minRating: 0,

                      // the main thing is to be done here
                      // update xth book rating from data base in initial rating
                      initialRating: (snapshot.data![index].rating).toDouble(),
                      onRatingUpdate: (double value) {},
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 24,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                    ),
                    // pass the url data in network image
                  ),
                  //***
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          // By default, show a loading spinner.
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.white,
                child: Center(
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    child: const CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      color: Colors.black,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
