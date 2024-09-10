import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    setState(() {
      activeDiceImage = 'assets/images/dice-4.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // make the column as small as possible so that
      // the Center widget can still center it vertically
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
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
