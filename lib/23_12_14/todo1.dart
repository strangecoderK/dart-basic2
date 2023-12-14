import 'dart:convert';

void main() {
  // 주어진 JSON 데이터
  String jsonData = '''
    {
      "dates": {"maximum": "2024-01-10", "minimum": "2023-12-20"},
      "page": 1,
      "results": [
        {
          "adult": false,
          "backdrop_path": "/k1KrbaCMACQiq7EA0Yhw3bdzMv7.jpg",
          "genre_ids": [16, 10751, 10402, 14, 35],
          "id": 901362,
          "original_language": "en",
          "original_title": "Trolls Band Together",
          "overview": "전 세계 모든 트롤을 열광케 했던 최고의 아이돌 그룹 ‘브로존’. 역대급 무대 실수와 형제 간의 불화로 결국 해체한 뒤, 모두에게 잊혀 간다. 그러던 어느 날, ‘브로존’의 황금막내 ‘브랜치’는 메인보컬 ‘플로이드’가 슈퍼스타 ‘벨벳’과 ‘비니어’에게 잡혀 재능을 빼앗기고 있다는 소식을 듣는다. 그를 구하기 위해서는 흩어져 있는 ‘브로존’을 재결합하고 완벽한 화음을 되찾아야 하는데… 12월, 가장 짜릿한 컴백 무대의 시작!",
          "popularity": 951.842,
          "poster_path": "/7M2pc9OboapgtoBbkU49Aim7O5B.jpg",
          "release_date": "2023-10-12",
          "title": "트롤 밴드 투게더",
          "video": false,
          "vote_average": 7.147,
          "vote_count": 347
        },
        // ... 다른 영화 데이터들 ...
      ],
      "total_pages": 30,
      "total_results": 585
    }
  ''';

  // JSON 문자열을 맵으로 변환
  Map<String, dynamic> jsonDataMap = json.decode(jsonData);

  // 'results' 키에 해당하는 리스트를 가져옴
  List<dynamic> results = jsonDataMap['results'];

  // 각 결과를 Todo 클래스의 인스턴스로 변환
  List<Todo> todos = results.map((json) => Todo.fromJson(json)).toList();

  // 출력
  todos.forEach((todo) {
    print('Todo Title: ${todo.title}, Release Date: ${todo.releaseDate}');
  });
}

class Todo {
  bool adult;
  String backdropPath;
  List<int> genreIds;
  int id;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  String releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  Todo({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      adult: json['adult'],
      backdropPath: json['backdrop_path'] as String,
      genreIds: (json['genre_ids'] as List<dynamic>).cast<int>(),
      id: json['id'] as int,
      originalLanguage: json['original_language'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: json['popularity'] as double,
      posterPath: json['poster_path'] as String,
      releaseDate: json['release_date'] as String,
      title: json['title'] as String,
      video: json['video'] as bool,
      voteAverage: json['vote_average'] as double,
      voteCount: json['vote_count'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'backdrop_path': backdropPath,
      'genre_ids': genreIds,
      'id': id,
      'original_language': originalLanguage,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'title': title,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    };
  }
}
