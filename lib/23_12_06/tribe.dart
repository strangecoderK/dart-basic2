   //static resource
abstract class Unit {
  String name;
  int hp;

  Unit(this.name, this.hp);
}

abstract class Building {
  String name;
  int hp;

  Building(this.name, this.hp);
}

abstract interface class Bionic {
  void scream()
}

abstract interface class Mechanic {
  void beep()
}

class TerranUnit extends Unit {
  TerranUnit(super.name, super.hp);
}

class ZergUnit extends Unit implements Bionic {
  ZergUnit(super.name, super.hp);
}

/*class ProtossUnit extends Unit {
  ProtossUnit(super.name, super.hp);
}

class TerranBuilding extends Building {
  TerranBuilding(super.name, super.hp);
}

class ZergBuilding extends Building implements Bionic {
  ZergBuilding(super.name, super.hp);
}

class ProtossBuilding extends Building {
  ProtossBuilding(super.name, super.hp);
}*/

class Medic extends TerranUnit implements Bionic {
  Medic(super.name, super.hp);

  heal()

  healSVC(SCV scv) {}
}

/*class Marine extends TerranUnit implements Bionic {
  Marine(super.name, super.hp);
}

class Tank extends TerranUnit implements Mechanic {
  Tank(super.name, super.hp);
}

class Vulture extends TerranUnit implements Mechanic {
  Vulture(super.name, super.hp);
}*/

class SCV extends TerranUnit implements Mechanic {
  SCV(super.name, super.hp);

  void getResource()

  int repair(Mechanic hp) {}
}


/*class Zealot extends ProtossUnit implements Mechanic {
  Zealot(super.name, super.hp);
}

class Dragun extends ProtossUnit implements Mechanic {
  Dragun(super.name, super.hp);
}
