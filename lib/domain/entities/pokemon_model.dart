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
  // 明示的に型を指定する場合
  List<int> numbers = [1, 2, 3];
  //var numbers = <int>[1, 2, 3, 4];
  // numbersは List<int> 型として推論される
  numbers.add(5); // 問題なし
  // numbers.add("hello"); // エラー: 'String' を 'int' に代入できない
  print(numbers); // [1, 2, 3, 4, 5]
}
