import 'hero.dart';
class Wizard{
  String name;
  int hp;

  Wizard({
    required this.name,
    required this.hp,
  });

  void heal(Hero hero){
    hero.hp += 10;
    print('${hero.name}의 hp를 10 회복했습니다.');
  }
}
void main(){
  final wizard1 = Wizard(name: '마법사', hp: 50);

  final hero1 = Hero(name: '슈퍼맨', hp: 100);
  final hero2 = Hero(name: '배트맨', hp: 100);

  wizard1.heal(hero1);
  wizard1.heal(hero2);

}