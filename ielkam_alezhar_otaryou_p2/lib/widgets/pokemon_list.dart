import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../models/pokemon_model.dart';

class PokemonList extends StatelessWidget {
  const PokemonList({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemonList = Pokemon.initial.map((pkmn) {
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
          leading: SvgPicture.asset(
            pkmn.iconPath ?? 'assets/img/unknown.svg',
            width: 30,
          ),
          title: Text(pkmn.name),
          trailing: Text("${pkmn.number}"),
        ),
      );
    }).toList();

    return ListView.separated(
      padding: const EdgeInsets.all(20.0),
      itemBuilder: (context, index) => pokemonList[index],
      separatorBuilder: (context, index) => const Divider(thickness: 4),
      itemCount: pokemonList.length,
    );
  }
}
