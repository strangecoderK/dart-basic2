//영화정보를 가져와서 모델에 담고 json 형태로 출력하기

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'todo1.dart';

void main() async{
  Todo todo = await getTodo(1);
  print(todo);
}

Future<Todo> getTodo(int id) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=$id'));
  print(response.body);
  return Todo.fromJson(jsonDecode(response.body));
}
