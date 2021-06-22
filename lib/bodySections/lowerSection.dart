import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class Lower extends StatefulWidget {
  const Lower({Key? key}) : super(key: key);

  @override
  _LowerState createState() => _LowerState();
}

class _LowerState extends State<Lower> {
  // initialised the selectedIndex param of InfiniteScroll
  // initialised the controller to control scroll
  late InfiniteScrollController controller;
  int selectedIndex = 0;

  // creating state initiation for every change in state of list
  @override
  void initState() {
    super.initState();
    controller = InfiniteScrollController();
  }

  // function to dispose memory usage of controller
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InfiniteCarousel.builder(
      // currently taking 10 books slider for test
      itemCount: 10,

      // item extent is the size one card will take in the
      // horizontal list
      itemExtent: 500,

      // these are the other params available on pub dev
      center: true,
      anchor: 0.0,
      velocityFactor: 0.2,
      onIndexChanged: (index) {},
      controller: controller,

      // to change the axis of scroll
      // i.e vertically or horizontally
      axisDirection: Axis.horizontal,
      // loop for infinite scroll
      loop: true,
      itemBuilder: (context, itemIndex, realIndex) {
        return Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              // decoration of the background container where
              // books will be shown
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(8.0)),
              child: Center(
                // using $itemIndex to access that particular container
                child: Text("Hi'$itemIndex'"),
              ),
            ));
      },
    );
  }
}
