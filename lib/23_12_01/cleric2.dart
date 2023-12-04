import 'dart:math';

class Cleric {
  static const hpMax = 50;
  static const mpMax = 10;
  String name;
  int hp;
  int mp;

  Cleric(this.name, {this.hp = hpMax, this.mp = mpMax});

  void selfAid() {
    {
      mp -= 5;
      hp = mpMax;
    }
  }

  int pray(int sec) {
    int recoveryValue;
    var randomPoint = Random().nextInt(3);
    recoveryValue = sec + randomPoint;

    if (mp + recoveryValue <= mpMax) {
      recoveryValue = recoveryValue;
    } else if (mp + recoveryValue > mpMax) {
      recoveryValue = mpMax - mp;
    }

    mp = mp + recoveryValue;
    return recoveryValue;
  }
}

void main() {
  Cleric hearler = Cleric('Lux', hp: 5, mp: 4);
  int result = hearler.pray(3);
  print('회복량은 $result');

  final cleric1 = Cleric('아서스', hp: 40, mp: 5);
  final cleric2 = Cleric('아서스', hp: 40);
  final cleric3 = Cleric('아서스');
  final cleric4 = Cleric();
}
