import 'slime.dart';

class Hero {
  String name;
  int hp;

  Hero(this.name, this.hp);

  void attack() {}

  void run() {}

  void sleep() {
    hp = 100;
    print('$name은 잠을 자고 회복했다.');
  }

  void sit() {}

  void slip() {}
}

void main(){
  Hero hero = Hero('준석', 100);
  Slime slime1 = Slime(40,'A');
  Slime slime2 = Slime(48,'B');

  hero.attack();
  slime1.run();
  slime2.run();
  hero.run();
  hero.sleep();

}