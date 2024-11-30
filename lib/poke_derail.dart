import 'package:flutter/material.dart';

class PokeDetail extends StatelessWidget {
  const PokeDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
          ],
        ),
      ),
    );
  }
}
