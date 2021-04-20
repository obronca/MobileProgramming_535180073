import 'package:pokedex/data/pokemon_page_resp.dart';
import 'package:flutter/material.dart';

abstract class PokemonState {}

class PokemonInitial extends PokemonState {}

class PokemonLoadInProgress extends PokemonState {}

class PokemonPageLoadSuccess extends PokemonState {
  final List<PokemonListing> pokemonListings;
  final bool okLoadNextPage;

  PokemonPageLoadSuccess(
      {@required this.pokemonListings, @required this.okLoadNextPage});
}

class PokemonPageLoadFailed extends PokemonState {
  final Error error;

  PokemonPageLoadFailed({@required this.error});
}
