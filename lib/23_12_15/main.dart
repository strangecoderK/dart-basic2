import 'package:untitled/23_12_15/mapper/movie_mapper.dart';

import 'data_source/movie_api.dart';
import 'model/result.dart';

void main() async {
  final api = MovieApi();

  final dto = await api.getDtoMovie();

  List<Result> results = dto.results
      ?.where((e) => e != null)    // 거를 거 거르고?
      .map((e) => e.toResult())    // 모델 클래스로 변환
      .toList() ?? [];

  // ------------------------------------------------------------

  print(results.toString());
}