import 'package:flutter/material.dart';

class PokeDetail extends StatelessWidget {
  const PokeDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text(
              'No.25',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Image.network(
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png",
              height: 100,
              width: 100,
            ),
          ),
          const Text(
            'pikachu',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          Chip(
            label: Text(
              'electric',
              style: TextStyle(
                  color: Colors.yellow.computeLuminance() > 0.5
                      ? Colors.black
                      : Colors.white),
            ),
            backgroundColor: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
