/*
연습문제 2-3 에서 작성한 Person 클래스로 생성한 ‘홍길동’, ‘한석봉'의 나이를 각각 20, 25살 이라고 할 때,
이름과 나이를 쌍으로 적당한 컬렉션에 넣습니다.
그 다음, 컬렉션에 저장한 값을 하나씩 다음과 같이 출력합니다.
“홍길동의 나이는 20살”
“한석봉의 나이는 25살”
 */

//첫번째 풀이법

// class Person {
//   String name;
//   int age;
//
//   Person({
//     required this.name,
//     required this.age,
//   });
// }
//
// void main () {
//   Map<String, dynamic> gildong = {
//     'name' : '홍길동',
//     'age' : 20,
//   };
//
//   gildong.entries.forEach((e) {
//     print(e.key);
//   });
//
//   Map<String, dynamic> seokbong = {
//     'name' : '한석봉',
//     'age' : 25,
//   };
//
//   seokbong.entries.forEach((e) {
//     print(e.value);
// });
//
// print(gildong['name']);
// print(gildong['age']);
//
// print('${gildong['name']}의 나이는 ${gildong['age']}살');
// print('${seokbong['name']}의 나이는 ${seokbong['age']}살');

//두번째 풀이법
class Person {
  String name;
  int age;

  Person({
    required this.name,
    required this.age,
  });
}

void main() {
  List<Person> people = [
    Person(name: '홍길동', age: 20),
    Person(name: '한석봉', age: 25),
  ];

  for (Person person in people) {
    print('${person.name}의 나이는 ${person.age}살');
  }
}