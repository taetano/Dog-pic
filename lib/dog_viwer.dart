import 'package:flutter/material.dart';
import 'dart:math';

class DogViwer extends StatefulWidget {
  const DogViwer({super.key});

  @override
  State<DogViwer> createState() => _DogViwerState();
}

class _DogViwerState extends State<DogViwer> {
  static final randomizer = Random();
  int dogImageNum = 1;

  void onClickHandler() {
    setState(() {
      int? randomNum;
      while (true) {
        randomNum = randomizer.nextInt(5) + 1;
        if (randomNum != dogImageNum) break;
      }
      dogImageNum = randomNum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dog-$dogImageNum.jpg",
          width: 300,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: onClickHandler,
            child: const Text(
              "Show Random Dog",
              style: TextStyle(color: Colors.deepPurple, fontSize: 28),
            ))
      ],
    );
  }
}
