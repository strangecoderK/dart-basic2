import 'package:untitled/game/hero.dart';
import 'package:untitled/game/slime.dart';
import 'package:untitled/game/sword.dart';

void main() {
  final sword = Sword(name: '불꽃의 검', damage: 5);

  final hero1 = Hero(name: '슈퍼맨', hp: 100);
  final hero2 = Hero(name: '배트맨',);
  final hero3 = Hero(name: '배트맨', hp:80, sword: sword);

  final slime1 = Slime(50, '나무');
  final slime2 = Slime(40, '불꽃');

  hero1.attack();
  slime1.run();
  slime2.run();
  hero1.run();
  hero1.sleep();

  hero1.sword = sword;
  print(hero1.sword);
}
