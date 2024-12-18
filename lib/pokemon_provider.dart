import 'package:pokemon_api/domain/entities/pokemon_model.dart';
import 'package:riverpod/riverpod.dart';

// プロバイダの定義
final pokemonProvider = FutureProvider.family<Pokemon, int>((ref, id) async {
  return fetchPokemon(id);
});
