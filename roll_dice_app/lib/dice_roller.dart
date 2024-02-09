import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var activeDiceImage = 'assets/images/dice-1.png';
  void handleRollDIce() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 220,
          child: Image.asset(
            activeDiceImage,
            width: 200,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                )),
            onPressed: handleRollDIce,
            child: const Text('Roll Dice'))
      ],
    );
  }
}
