import 'dart:convert';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() => {"name": name, "age": age};
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Map<dynamic, dynamic> toJson() => {
        "name": name,
        "leader": leader,
      };
}

void main() {
  Employee employee = Employee('홍길동', 41);
  Department department = Department('총무부', employee);

  var employeeJson = employee.toJson();
  String jsonString1 = jsonEncode(employeeJson);
  print(jsonString1);

  var departmentJson = department.toJson();
  String jsonString2 = jsonEncode(departmentJson);
  print(jsonString2);
}
