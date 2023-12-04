void main() {
  Wizard wizard = Wizard(
    name: '마법사',
    hp: 50,
    mp: 50,
  );

  wizard.name = '토르';
  wizard.mp = -5;
  wizard.hp = -4;
  print(wizard._hp);

  Wand wand = Wand(
    name: '지팡이',
    power: 60,
  );
  wand.name = '연필';
  wand.power = 150;
}

class Wand {
  String _name;
  double _power;

  Wand({
    required String name,
    required double power,
  })  : _name = name,
        _power = power;

  String get name => _name; //읽기 허용

  set name(String value) {
    _name = value;
    if (value.length < 3) {
      throw Exception('이름은 3보다 커야합니다.');
    }
  }

  set power(double value) {
    _power = value;
    if (value < 0.5) {
      throw Exception('마력이 약합니다.');
    } else if (value > 105) {
      throw Exception('마력을 감당하지 못합니다.');
    }
  }
}

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand? wand;

  Wizard({
    required String name,
    required int hp,
    required int mp,
    this.wand,
  })  : _name = name,
        _hp = hp,
        _mp = mp;

  set name(String value) {
    _name = value;
    if (value.length < 3) {
      throw Exception('이름은 3보다 커야합니다.');
    }
  }

  set mp(int value) {
    _mp = value;
    if (value < 0) {
      throw Exception('힘이 없다');
    }
  }

  set hp(int value) {
    if (value < 0) {
      _hp = 0; // 음수일 경우 0으로 설정
    } else {
      _hp = value;
    }
  }
}
