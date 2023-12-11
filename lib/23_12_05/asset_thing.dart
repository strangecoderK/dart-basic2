abstract class Asset {
  String name;
  int price;

  Asset({
    required this.name,
    required this.price,
  });
}

abstract interface class Thing {
  double get weight; //getter
  set weight(double value); //setter
}
