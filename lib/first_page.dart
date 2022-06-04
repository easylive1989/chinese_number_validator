import 'dart:math';

import 'package:flutter/material.dart';
import 'package:chinese_number_validator/number_converter.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String randomNumber = _getRandomNumber();
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Text(
              "What's the number: ${NumberConvertor.toText(randomNumber)}",
            ),
          ),
          OutlinedButton(
            child: const Text("Go to answer"),
            onPressed: () async {
              var result = await Navigator.of(context).pushNamed("/second");
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Answer is ${result == randomNumber ? "correct" : "wrong"}"),
              ));
            },
          ),
        ],
      ),
    );
  }

  String _getRandomNumber() {
    return Random().nextInt(100).toString();
  }
}
