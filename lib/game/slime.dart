class Slime{
  int hp;
  final int level = 10; // 필드를 상수로 선언
  String suffix;

  Slime(this.hp, this.suffix);

  void run(){
    print('$suffix 슬라임이 도망갔습니다');
  }
}