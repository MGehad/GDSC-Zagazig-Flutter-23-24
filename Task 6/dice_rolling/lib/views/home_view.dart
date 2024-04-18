import 'dart:math';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> images = [
    'assets/Dice_Assets/dice-six-faces-five.png',
    'assets/Dice_Assets/dice-six-faces-four.png',
    'assets/Dice_Assets/dice-six-faces-one.png',
    'assets/Dice_Assets/dice-six-faces-six.png',
    'assets/Dice_Assets/dice-six-faces-three.png',
    'assets/Dice_Assets/dice-six-faces-two.png'
  ];
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dice",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 50,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  number = Random().nextInt(6);
                });
              },
              child: Image.asset(
                images[number],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
