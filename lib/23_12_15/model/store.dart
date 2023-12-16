import 'package:json_annotation/json_annotation.dart';

part 'store.g.dart';

@JsonSerializable(explicitToJson: true)
class Store {
  String name;

  Store(this.name);

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  Map<String, dynamic> toJson() => _$StoreToJson(this);
}
