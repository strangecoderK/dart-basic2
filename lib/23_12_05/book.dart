import 'package:untitled/23_12_05/TangibleAsset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book({
    required super.name,
    required super.price,
    required super.color,
    required this.isbn,
  });
}
