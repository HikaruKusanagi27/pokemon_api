import 'package:flutter/material.dart';
import 'package:pokemon_api/poke_derail.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('detail'),
          onPressed: () => {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const PokeDetail(),
              ),
            ),
          },
        ),
      ),
    );
  }
}
