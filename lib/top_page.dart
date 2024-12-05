import 'package:flutter/material.dart';
import 'package:pokemon_api/poke_list_item.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10000,
        itemBuilder: (context, index) => PokeListItem(index: index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
          ),
        ],
      ),
    );
  }
}
