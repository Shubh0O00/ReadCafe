import 'package:flutter/material.dart';

class Pager extends StatefulWidget {
  const Pager({Key? key}) : super(key: key);

  @override
  _PagerState createState() => _PagerState();
}

class _PagerState extends State<Pager> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: TextButton(
              child: Icon(
                Icons.arrow_left,
                size: 20,
              ),
              onPressed: () {},
            )),
        Align(
          alignment: Alignment.topRight,
          child: TextButton(
            onPressed: () {},
            child: Icon(
              Icons.arrow_right,
              size: 20,
            ),
          ),
        )
      ],
    );
  }
}
