import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll1 = 1;
  var currentDiceRoll2 = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll1 = randomizer.nextInt(6) + 1;
      currentDiceRoll2 = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // make the column as small as possible so that
      // the Center widget can still center it vertically
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll1.png',
              width: 150,
            ),
            Image.asset(
              'assets/images/dice-$currentDiceRoll2.png',
              width: 150,
            ),
          ],
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 55, 0, 150),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 26),
          ),
          onPressed: rollDice,
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
