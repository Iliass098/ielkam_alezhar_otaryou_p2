import 'package:flutter/material.dart';
import '../models/pokemon_model.dart';
import 'third_view.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemons = Pokemon.initial;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokédex'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: pokemons.length,
        separatorBuilder: (_, __) => const Divider(thickness: 3),
        itemBuilder: (context, index) {
          final pkmn = pokemons[index];
          Color bgColor;
          switch (pkmn.type) {
            case PokemonType.fire:
              bgColor = Colors.red.withOpacity(0.4);
              break;
            case PokemonType.plant:
              bgColor = Colors.green.withOpacity(0.4);
              break;
            case PokemonType.water:
              bgColor = Colors.lightBlue.withOpacity(0.4);
              break;
          }

          return Container(
            color: bgColor,
            child: ListTile(
              leading: Image.asset(
                pkmn.iconPath ?? 'assets/img/unknown.png',
                width: 40,
              ),
              title: Text(pkmn.name),
              trailing: Text('#${pkmn.number}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ThirdView(pokemon: pkmn)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
