//가 : asset
//나 : IntangibleAsset
//다 : Patent
import 'package:untitled/23_12_05/asset_Thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String color;
  double _weight;

  TangibleAsset(
      {required super.name,
      required super.price,
      required this.color,
      required double weight})
      : _weight = weight;

  @override
  double get weight {
    return _weight;
  }

  @override
  set weight(double value) {
    _weight = value;
    if (value < 0) {
      throw Exception('무게가 안느껴집니다.');
    }
  }
}
