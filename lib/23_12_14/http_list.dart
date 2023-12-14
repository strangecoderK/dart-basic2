import 'dart:convert';
import 'package:http/http.dart' as http;
import 'todo.dart';

void main() async {
  List<Todo> todo = await getTodo();
  todo.forEach((e) {
    print(e.title);
  });
}

Future<List<Todo>> getTodo() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/'));
  final jsonList = jsonDecode(response.body) as List<dynamic>;
  return jsonList.map((e) => Todo.fromJson(e)).toList();
  //요청
  // final response =
  //     await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/'));
  // //jsonString
  // final jsonString = response.body;
  // //to Map
  // final jsonList = jsonDecode(jsonString) as List<dynamic>;
  // return jsonList.map((e) => Todo.fromJson(e)).toList();
}
