import 'dart:convert';
import 'package:http/http.dart' as http;
import 'todo.dart';

void main() async {
  Todo todo = await getTodo(1);
  print(todo.title);
}

Future<Todo> getTodo(int id) async {
  /*
  //요청
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
  //JsonString
  final jsonString = response.body;
  //to map
  final json = jsonDecode(jsonString);

  print('resoponse ${response.body}');
  print('json $json');
  print('Todo ${Todo.fromJson(json)}');
  //모델클래스로 변환
  return Todo.fromJson(json);
  //return Todo.fromJson(jsonDecode(response.body));*/

  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
  return Todo.fromJson(jsonDecode(response.body));
}
