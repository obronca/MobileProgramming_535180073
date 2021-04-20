import 'package:flutter/material.dart';

class PokemonSpeciesInfoResponse {
  final String desc;
  PokemonSpeciesInfoResponse({@required this.desc});

  factory PokemonSpeciesInfoResponse.fromJson(Map<String, dynamic> json) {
    return PokemonSpeciesInfoResponse(
        desc: json['flavor_text_entries'][0]['flavor_text']);
  }
}
