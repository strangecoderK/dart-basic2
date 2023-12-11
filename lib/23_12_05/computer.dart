import 'package:untitled/23_12_05/tanglible_asset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required double weight,
    required super.name,
    required super.price,
    required super.color,
    required this.makerName,
  }) : super(weight: weight);
}

void main() {
  Computer computer = Computer(
      weight: 30.0, name: '컴퓨터', price: 200, color: '회색', makerName: 'apple');

  computer.weight = -2;
}
