import 'package:flutter/material.dart';
import 'package:read_cafe/footer.dart';
import 'package:read_cafe/upperSection.dart';
import 'lowerSection.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          // in this container we'll make the upper part showing book selected
          // reviews written and you can rate that particular book

          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/3.jpg'),
                    fit: BoxFit.cover)),
            child: Upper(),
          ),

          // in this container we'll use a parallax swiper horizontally
          // to show books available and there ratings

          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/2.jpg'),
                    fit: BoxFit.cover)),
            child: Lower(),
          ),
          Footer(),
        ]),
      ),
    );
  }
}
