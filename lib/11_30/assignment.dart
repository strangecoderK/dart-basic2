import 'dart:math';

class Cleric {
  String name;
  int hp = 50;
  int mp = 10;
  static const int hpMax = 50;
  static const int mpMax = 10;

  Cleric(this.name, {this.hp=hpMax, this.mp=mpMax});//optional parameter의 디폴트는 컴파일 타임에 초기화된 상수여야한다.

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
  Cleric cleric = Cleric('럭스', hp :24, mp:8);
  cleric.selfAid();
  cleric.pray(3);

  final cleric1 = Cleric('아서스', hp: 40, mp: 5);
  final cleric2 = Cleric('아서스', hp: 40);
  final cleric3 = Cleric('아서스');
}
