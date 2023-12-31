import 'package:untitled/23_12_05/tanglible_asset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book({
    required double weight,
    required super.name,
    required super.price,
    required super.color,
    required this.isbn,
  }) : super(weight: weight);
}
