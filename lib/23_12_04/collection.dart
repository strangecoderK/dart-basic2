void main() {

  Person person1 = Person('홍길동',20);
  Person person2 = Person('한석봉', 16);
  List<Person> names = [person1, person2];

  for(int i=0; i<names.length; i++){
    print(names[i].name);
  }
}
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}