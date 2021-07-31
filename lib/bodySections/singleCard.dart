import 'package:flutter/material.dart';
import 'package:read_cafe/bodySections/upperSection.dart';

class SingleCard extends StatelessWidget {
  const SingleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // in this container we'll make the upper part showing book selected
      // reviews written and you can rate that particular book
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/3.jpg'), fit: BoxFit.cover)),
      child: Upper(),
    );
  }
}
