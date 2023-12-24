import 'package:untitled/game/hero.dart';
import 'package:untitled/game/slime.dart';
import 'package:untitled/game/sword.dart';

void main() {
  final sword = Sword(name: '불꽃의 검', damage: 5);

  final hero = Hero(name: '슈퍼맨', hp: 100);

  final slime1 = Slime(50, '나무');
  final slime2 = Slime(40, '불꽃');

  hero.attack();
  slime1.run();
  slime2.run();
  hero.run();
  hero.sleep();

  hero.sword = sword;
  print(hero.sword);
}
