import 'dart:math';

class Cleric{
  String name;
  int hp=50;
  final int hpMax=50;
  int mp=10;
  final int mpMax=10;

  Cleric(this.name, this.hp, this.mp);

  void selfaid(){
    mp-=5;
    hp=mpMax;
  }

  int pray(int sec){
    int recoveryValue;
    var randomPoint = Random().nextInt(3);
    recoveryValue = sec+randomPoint;
    if(mp+recoveryValue<=mpMax){
      recoveryValue=recoveryValue;
    }else if(mp+recoveryValue>mpMax){
      recoveryValue=mpMax-mp;}
    mp=mp+=recoveryValue;
    return recoveryValue;
  }
}

void main(){
  Cleric hearler=Cleric('Lux',5,1);

  int result=hearler.pray(3);
  print('회복량은 $result');
}