// 총무부 리더 ‘홍길동(41세)’의 인스턴스를 생성하고 직렬화하여 company.txt 파일에 쓰는 프로그램을 작성하시오.
// 직렬화를 위해 위의 2개 클래스를 일부 수정해도 됩니다.

import 'dart:convert';
import 'dart:io';

// 인스턴스 생성
class Employee {
  String name;
  int age;

  Employee({
    required this.name,
    required this.age,
  });

// encoding, decoding 작업을 위해 fromjson, tojson 만듦
  Employee.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
      };
}

// 안쪽에 있는 모든 클래스가 직렬화 되어야 한다.
class Department {
  String department;
  Employee leader;

  Department({
    required this.department,
    required this.leader,
  });

  Department.fromJson(Map<String, dynamic> json)
      : department = json['department'],
        leader = json['leader'];

  Map<String, dynamic> toJson() => {
        'department': department,
        'leader': leader // leader.toJson() 이 들어가야 함. 나는 leader로 넣었음
      };
}

void main() {

  // 인스턴스 생성, leader가 모두 들어갈 수 있게 처리
  Employee leader = Employee(name: '홍길동', age: 41);
  Department department = Department(department: '총무부', leader: leader);


//txt 파일 생성하고, json 파일을 내용에 넣기. department에 leader도 들어가 있음.
  final myFile = File('company.txt');
  myFile.writeAsStringSync(jsonEncode(department.toJson())); // 인코드해주기

  String readString = myFile.readAsStringSync();//department.toJson()
  print(readString);

  //디코드 해보기
  Map<String, dynamic> json = jsonDecode(readString);

  Employee leader2 = Employee.fromJson(json['leader']);

  print(leader2.name);
  print(leader2.age);


}
