import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('footer'),
      height: 100.0,
      width: double.infinity,
      color: Colors.brown,
    );
  }
}
