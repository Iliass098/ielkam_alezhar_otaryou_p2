import 'package:flutter/material.dart';
import '../models/pokemon_model.dart';

class ThirdView extends StatelessWidget {
  final Pokemon pokemon;

  const ThirdView({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.deepPurple[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              pokemon.iconPath ?? 'assets/img/unknown.png',
              width: 100,
            ),
            const SizedBox(height: 20),
            Text(
              pokemon.name,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('Type: ${pokemon.type.name}', style: const TextStyle(fontSize: 20)),
            Text('Number: ${pokemon.number}', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
              label: const Text('Back to Pokédex'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
