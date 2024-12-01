import 'package:flutter/material.dart';
import 'package:pokemon_api/poke_derail.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          PikaButton(),
          PikaButton(),
          PikaButton(),
          PikaButton(),
          PikaButton(),
          PikaButton(),
          PikaButton(),
          PikaButton(),
          PikaButton(),
          PikaButton(),
          PikaButton(),
          PikaButton(),
          PikaButton(),
          PikaButton(),
        ],
      ),
    );
  }
}

class PikaButton extends StatelessWidget {
  const PikaButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('pikachu'),
      onPressed: () => {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => const PokeDetail(),
          ),
        ),
      },
    );
  }
}
