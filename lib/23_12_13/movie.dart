import 'dart:convert';

class MovieInfo {
  String title;
  String director;
  int year;

  MovieInfo(this.title, this.director, this.year);
}

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  final mockData = {
    'title': 'star Wars',
    'director': 'George Lucas',
    'year': 1977,
  };
  return jsonEncode(mockData);
}
Future <void> main()async{


}