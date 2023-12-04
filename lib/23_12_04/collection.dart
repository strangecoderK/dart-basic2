void main() {
  Person person1 = Person('홍길동', 20);
  Person person2 = Person('한석봉', 25);
  List<Person> names = [person1, person2];

  for (int i = 0; i < names.length; i++) {
    print(names[i].name);
  }

  Map<String, int> info = {'홍길동': 20, '한석봉': 25};

  info.entries.forEach((element) {
    print('${element.key}의 나이는 ${element.value}살');
  });
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
