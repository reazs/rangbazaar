import 'package:flutter/material.dart';
import 'package:rangbazaar/constants.dart';
import 'package:rangbazaar/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
            primaryColor: kPrimaryColor,
            colorScheme:
                ThemeData().colorScheme.copyWith(primary: kPrimaryColor)),
        home: const HomePage());
  }
}
