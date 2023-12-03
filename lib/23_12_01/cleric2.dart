import 'dart:math';

class Cleric {
  static const hpMax = 50;
  static const mpMax = 10;
  String name;
  int? hp = 50;
  int? mp = 10;

  Cleric(this.name, {this.hp, this.mp});

  void selfAid(int? mp) {
    if (mp != null) {
      mp -= 5;
      hp = mpMax;
    }
  }

  int pray(int sec) {
    int recoveryValue;
    var randomPoint = Random().nextInt(3);
    recoveryValue = sec + randomPoint;

    if (mp! + recoveryValue <= mpMax) {
      recoveryValue = recoveryValue;
    } else if (mp! + recoveryValue > mpMax) {
      recoveryValue = mpMax - mp!;
    }

    mp = mp! + recoveryValue;
    return recoveryValue;
  }
}

void main() {
  Cleric hearler = Cleric('Lux', hp: 5, mp: 4);
  Cleric.hpMax;
  Cleric.mpMax;
  int result = hearler.pray(3);
  print('회복량은 $result');
}
