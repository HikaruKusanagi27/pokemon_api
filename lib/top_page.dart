import 'package:flutter/material.dart';
import 'package:pokemon_api/poke_derail.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10000,
          itemBuilder: (context, index) => PokeListItem(index: index)),
    );
  }
}

class PokeListItem extends StatelessWidget {
  final int index;
  const PokeListItem({Key? key, required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png",
        height: 50,
        width: 50,
      ),
      title: const Text(
        'pikachu',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: const Text(
        '⚡️electric',
      ),
      onTap: () => {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => const PokeDetail(),
          ),
        ),
      },
    );
  }
}
