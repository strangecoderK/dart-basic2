import '../game/sword.dart';

abstract class Tribe {}
class Hero {
  String name;
  int hp;
  Sword? sword;

  Hero({
    this.name='홍길동',
    this.hp=100,
    this.sword,
  });
}
