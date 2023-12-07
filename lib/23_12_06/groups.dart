class Groups {
  static List<Group> groups = <Group>[];

  static void addUnitToGroup({required Unit unit}) {
    // 아래 코드는 테스트를 함수 구현 코드입니다.
    if (Groups.groups.length < 1) {
      Groups.groups.add(Group(groupNum: Groups.groups.length - 1));
      Groups.groups.last.units.add(unit);
    } else {
      if (Groups.groups.last.units.length < 12) {
        Groups.groups.last.units.add(unit);
      } else {
        Groups.groups.add(Group(groupNum: Groups.groups.length - 1));
        Groups.groups.last.units.add(unit);
      }
    }
  }
}

class Group {
  Group({required this.groupNum});

  final int groupNum;
  List<Unit> units = <Unit>[];
