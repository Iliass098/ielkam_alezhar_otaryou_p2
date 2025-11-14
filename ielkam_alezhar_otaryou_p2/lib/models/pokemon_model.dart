// lib/models/pokemon_model.dart

enum PokemonType { plant, fire, water }

class Pokemon {
  final String name;
  final int number;
  final PokemonType type;
  final String? iconPath;

  Pokemon({
    required this.name,
    required this.number,
    required this.type,
    this.iconPath,
  });

  /// A predefined (static) list of initial Pokemon instances.
  static final List<Pokemon> initial = [
    Pokemon(
      name: 'Bulbasaur',
      number: 1,
      type: PokemonType.plant,
      iconPath: 'assets/img/1.png',
    ),
    Pokemon(
      name: 'Ivysaur',
      number: 2,
      type: PokemonType.plant,
      iconPath: 'assets/img/1-2.jpg',
    ),
    Pokemon(
      name: 'Venusaur',
      number: 3,
      type: PokemonType.plant,
      iconPath: 'assets/img/1-3.png',
    ),
    Pokemon(
      name: 'Charmander',
      number: 4,
      type: PokemonType.fire,
      iconPath: 'assets/img/2.png',
    ),
    Pokemon(
      name: 'Charmeleon',
      number: 5,
      type: PokemonType.fire,
      iconPath: 'assets/img/2-2.png',
    ),
    Pokemon(
      name: 'Charizard',
      number: 6,
      type: PokemonType.fire,
      iconPath: 'assets/img/2-3.png',
    ),
    Pokemon(
      name: 'Squirtle',
      number: 7,
      type: PokemonType.water,
      iconPath: 'assets/img/3.png',
    ),
    Pokemon(
      name: 'Wartortle',
      number: 8,
      type: PokemonType.water,
      iconPath: 'assets/img/3-2.jpg',
    ),
    Pokemon(
      name: 'Blastoise',
      number: 9,
      type: PokemonType.water,
      iconPath: 'assets/img/3-3.png',
    ),
  ];
}
