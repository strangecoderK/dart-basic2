//Dto를 모델클래스로 변환

import '../dto/movie_dto.dart';
import '../model/result.dart';

extension ResultsToResult on Results {
  Result toResult() {
    return Result(
      adult: adult ?? false,
      originalLanguage: originalLanguage ?? '',
      originalTitle: originalTitle ?? '',
      popularity: popularity ?? 0,
      releaseDate: releaseDate ?? '',
      title: title ?? '',
      video: video ?? false,
    );
  }
}
