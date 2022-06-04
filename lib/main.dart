import 'package:flutter/material.dart';
import 'package:chinese_number_validator/first_page.dart';
import 'package:chinese_number_validator/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inherited Counter',
      routes: {
        "/": (context) => const FirstPage(),
        "/second": (context) => const SecondPage(),
      },
    );
  }
}
