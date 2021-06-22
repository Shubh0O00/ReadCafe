import 'package:flutter/material.dart';
import 'package:read_cafe/bodySections/lowerSection.dart';

class InfinityCards extends StatelessWidget {
  const InfinityCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // in this container we'll use a parallax swiper horizontally
      // to show books available and there ratings
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/2.jpg'), fit: BoxFit.cover)),
      child: Lower(),
    );
  }
}
