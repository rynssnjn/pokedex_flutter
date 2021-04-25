import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_flutter/apis/pokeapi/models/pokemon_pokemon.dart';

part 'pokemon_evolution.freezed.dart';
part 'pokemon_evolution.g.dart';

@freezed
abstract class PokemonEvolution with _$PokemonEvolution {
  factory PokemonEvolution({
    @JsonKey(name: 'base') PokemonPokemon? base,
    @JsonKey(name: 'middle') PokemonPokemon? middle,
    @JsonKey(name: 'last') List<PokemonPokemon>? last,
  }) = _PokemonEvolution;

  factory PokemonEvolution.fromJson(Map<String, dynamic> json) => _$PokemonEvolutionFromJson(json);
}
