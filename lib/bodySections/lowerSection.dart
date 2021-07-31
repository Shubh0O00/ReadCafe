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
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/originals/9e/07/fe/9e07fe5842ccad12c689fbf2dded4480.jpg"),
                      fit: BoxFit.cover)),

              // adding child rating bar which will be updated by us
              // it will show the recorded ratings

              child: Align(
                alignment: Alignment.bottomCenter,
                child: RatingBar.builder(
                  direction: Axis.horizontal,
                  minRating: 1,

                  // the main thing is to be done here
                  // update xth book rating from data base in initial rating

                  initialRating: 3,
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
              ));
        },
      ),
    );
  }
}
