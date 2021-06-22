import 'package:flutter/material.dart';
import 'package:read_cafe/bodySections/footer.dart';
import 'package:read_cafe/bodySections/infinityCards.dart';
import 'package:read_cafe/bodySections/singleCard.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //calling SingleCard Widget from singleCard.dart
            SingleCard(),
            //for 10 pixel of space
            SizedBox(height: 10.0),
            //calling InfinityCards Widget from infinityCards.dart
            InfinityCards(),
            //for 10 pixel of space
            SizedBox(height: 10.0),
            //calling Footer Widget from footer.dart
            Footer(),
          ],
        ),
      ),
    );
  }
}
