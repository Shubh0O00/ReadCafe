import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('footer'),
      height: MediaQuery.of(context).size.height * 0.15,
      width: double.infinity,
      color: Colors.white,
    );
  }
}
