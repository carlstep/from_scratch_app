import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRollOne = 2;
  var currentDiceRollTwo = 2;

  void rollDice() {
    setState(() {
      currentDiceRollOne = randomizer.nextInt(6) + 1;
      currentDiceRollTwo = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRollOne.png',
          width: 150,
        ),
        const SizedBox(
          height: 30,
        ),
        Image.asset(
          'assets/images/dice-$currentDiceRollTwo.png',
          width: 150,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.all(12),
              foregroundColor: Colors.blue[900],
              backgroundColor: Colors.amber),
          onPressed: rollDice,
          child: const Text(
            'Roll Dice',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ],
    );
  }
}
