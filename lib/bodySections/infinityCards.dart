import 'package:flutter/material.dart';
import 'package:read_cafe/bodySections/lowerSection.dart';

class InfinityCards extends StatelessWidget {
  const InfinityCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // in this container we'll use a infinite carousel
      // to show books available and there ratings
      width: double.infinity,
      height: MediaQuery.of(context).size.width * 0.41,
      decoration: BoxDecoration(
          // this is the background image of lower section
          image: DecorationImage(
              image: AssetImage('assets/images/2.jpg'), fit: BoxFit.cover)),
      child: Lower(),
    );
  }
}
