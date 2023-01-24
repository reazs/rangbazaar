import 'package:flutter/material.dart';
import 'package:rangbazaar/constants.dart';

import '../components/greetingInfo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding),
            // ignore: prefer_const_literals_to_create_immutables
            child:
                // ignore: prefer_const_literals_to_create_immutables
                Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const GreetingInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
