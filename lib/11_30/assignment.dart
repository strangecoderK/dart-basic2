import 'dart:math';

class Cleric {
  String name;
  int hp = 50;
  int mp = 10;
  final int hpMax = 50;
  final int mpMax = 10;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = hpMax;
      print('hp가 가득 찼습니다. 현재 mp는 $mp입니다.');
    }
  }

  int pray(int sec) {
    int randomPoint = Random().nextInt(3);
    int recoveryMp = sec + randomPoint;
    if (mp + recoveryMp >= 10) {
      recoveryMp = mpMax - mp;
    }
    print('회복량은 $recoveryMp입니다.');
    return recoveryMp;
  }
}

void main() {
  Cleric cleric = Cleric('럭스', 24, 8);
  cleric.selfAid();
  cleric.pray(3);
}
