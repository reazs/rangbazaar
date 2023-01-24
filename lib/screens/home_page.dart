import 'package:flutter/material.dart';
import 'package:rangbazaar/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 200,
          width: double.infinity,
          color: kPrimaryColor,
        )
      ]),
    );
  }
}
