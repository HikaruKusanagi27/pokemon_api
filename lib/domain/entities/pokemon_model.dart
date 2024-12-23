import 'dart:convert';
import 'package:http/http.dart' as http;

class Pokemon {
  final int id;
  final String name;
  final List<String> types;
  final String imageUrl;

  Pokemon({
    required this.id,
    required this.name,
    required this.types,
    required this.imageUrl,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    List<String> typesToList(dynamic types) {
      List<String> ret = [];
      for (int i = 0; i < types.length; i++) {
        ret.add(types[i]['type']['name']);
      }
      return ret;
    }

    return Pokemon(
      id: json['id'],
      name: json['name'],
      types: typesToList(json['types']),
      imageUrl: json['sprites']['other']['official-artwork']['front_default'],
    );
  }
}

Future<Pokemon> fetchPokemon(int id) async {
  final res = await http.get(Uri.parse(''));
  // $pokeApiRoute/pokemon/$id
  if (res.statusCode == 200) {
    return Pokemon.fromJson(jsonDecode(res.body));
  } else {
    throw Exception('Failed to Load Pokemon');
  }
}

// Dart基礎が分かっていないためDartpadでコード勉強中
void main() {
  // int型
  int age = 25;
  print("年齢: $age");

  // String型
  String name = "Alice";
  print("名前: $name");

  int b = 3; // int型として明示的に定義

  b = "Hello World"; // 型が異なるためエラー
}
