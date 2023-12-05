//가 : asset
//나 : IntangibleAsset
//다 : Patent
import 'package:untitled/23_12_05/asset.dart';

abstract class TangibleAsset extends Asset {
  String color;

  TangibleAsset({
    required super.name,
    required super.price,
    required this.color,
  });
}
