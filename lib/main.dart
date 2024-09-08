import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 55, 0, 150),
              Color.fromARGB(255, 248, 56, 254),
            ]),
          ),
          child: const Center(
            child: Text('hello world!'),
          ),
        ),
      ),
    ),
  );
}
