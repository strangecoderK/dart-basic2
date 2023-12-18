import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable(explicitToJson: true)
class Result {
  bool adult;
  String originalLanguage;
  String title;
  num popularity;
  String releaseDate;
  String originalTitle;
  bool video;


  Result({
    required this.adult,
    required this.originalLanguage,
    required this.title,
    required this.popularity,
    required this.releaseDate,
    required this.originalTitle,
    required this.video, // required로 해줘야 매퍼 에러 안생기더라
  });


  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);

  // @override 빌드 리빌드 하고 만들어야 오류가 안생긴다..?
  String toString() {
    return 'Result{adult:$adult, originalLange:$originalLanguage, title:$title, popularity:$popularity, releaseDate:$releaseDate, originalTitle:$originalTitle, video:$video}';
  }
}
