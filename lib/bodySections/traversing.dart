import 'package:flutter/material.dart';

class Pager extends StatefulWidget {
  const Pager({Key? key}) : super(key: key);

  @override
  _PagerState createState() => _PagerState();
}

class _PagerState extends State<Pager> {
  @override
  Widget build(BuildContext context) {
    return Wrap(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                child: Icon(
                  Icons.arrow_left,
                  size: MediaQuery.of(context).size.width * 0.09,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ]),
          Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width * 0.09,
                ),
              ),
            ),
          ]),
        ],
      )
    ]);
  }
}
