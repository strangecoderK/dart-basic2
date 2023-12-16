import 'dart:convert';

import 'todo_2.dart';
import 'package:http/http.dart' as http;

void main() async {
  Todo todo = await getTodo(1);
  print(todo.toJson());
}

Future<Todo> getTodo(int id) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/\$%7BmovieId%7D?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=$id'));
  //print(response.body);
  return Todo.fromJson(jsonDecode(response.body));
}
