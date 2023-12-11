import 'sword.dart';

class Hero {
  String name;
  int hp;
  Sword? sword;

  void attack() {
    print('공격했습니다.');
  }

  void run() {}

  void sleep() {
    hp = 100;
    print('$name은 잠을 자고 회복했다.');
  }

  void sit() {}

  void slip() {}

  Hero({
    required this.name,
    required this.hp,
    this.sword,
  });
}

void main() {
  final sword = Sword(name: '불꽃의 검', damage: 5);

  final hero = Hero(
    name: '슈퍼맨',
    hp: 100,
  );

  hero.sword = sword;
  print(hero.sword);
}
