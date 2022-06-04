import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 300,
          child: TextFormField(
            keyboardType: TextInputType.number,
            onFieldSubmitted: (text) => Navigator.of(context).pop(text),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Answer"),
            ),
          ),
        ),
      ),
    );
  }
}
