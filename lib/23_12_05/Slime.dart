//2,3,5
//(1) Iphone -> Phone -> Device
//(2) Bus -> Car -> Vehicle
//(3) ElectronicDictionary -> Dictionary -> Book

import 'hero.dart';

class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('슬라임 $suffix이/가 공격했다');
    print('10의 데미지');
    hero.hp -= 10;
  }
}

class PoisonSlime extends Slime {
  int number = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    print('슬라임 $suffix이/가 공격했다');
    print('10의 데미지');
    hero.hp -= 10;
    if (number > 0) {
      number--;
      hero.hp-=hero.hp~/5;
      print('${hero.hp~/5}의 데미지!');
      print('추가로, 독 포자를 살포했다!');
    }
  }
}

void main() {
  PoisonSlime poisonSlime = PoisonSlime('독버섯');
  Hero hero = Hero('토르', 100);

  poisonSlime.attack(hero);

}
