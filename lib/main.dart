import 'package:flutter/material.dart';
import 'package:dice_roller/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 55, 0, 150),
          Color.fromARGB(255, 248, 56, 254),
        ),
      ),
    ),
  );
}
