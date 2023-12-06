import 'package:untitled/23_12_06/bionic.dart';
import 'package:untitled/23_12_06/mechanic.dart';
import 'package:untitled/23_12_06/terran.dart';

class Marine extends Terran implements Bionic {}

class Medic extends Terran implements Bionic {
  void heal1(Bionic bionic) {}

  void heal2(SCV scv) {}
}

class Tank extends Terran implements Mechanic {}

set hp(double value) {}

class Vulture extends Terran implements Mechanic {}

class SCV extends Terran implements Mechanic {
  void collect();

  void fix(Mechanic mechanic) {}
}

class Zealot {}

class Dragun {}
