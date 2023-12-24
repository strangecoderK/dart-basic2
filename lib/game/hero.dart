import 'sword.dart';

class Hero {
  String name;
  int hp;
  Sword? sword;

  Hero({
    required this.name,
    this.hp=100,
    this.sword,
  });

  void attack() {
    print('$name이 공격했습니다.');
  }

  void run() {
    print('$name이 도망칩니다.');
  }

  void sleep() {
    hp = 100;
    print('$name은 잠을 자고 회복했다.');
  }

  void sit() {
    print('$name이 앉습니다.');
  }

  void slip() {
    print('$name이 미끄러졌습니다.');
  }
}
