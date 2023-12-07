// 강의 예제 따라해보기

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Person && runtimeType == other.runtimeType &&
              name == other.name;
  // other가 Person 클래스의 인스턴스이고, 런타임 타입도 동일하고, 두 객체의 name 속성이 동일한지

  @override
  int get hashCode => name.hashCode;
}
// 두 객체가 동일하면 해쉬코드도 동일해야 하기 때문에!


void main() {
  Person person1 = Person('Jack', 23);
  Person person2 = person1;
  print(person1 == person2); // 결과: true


}


