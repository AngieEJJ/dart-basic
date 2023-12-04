/* 다음을 수행하는 코드를 작성하시오.
이름을 가지는 Person 클래스를 작성하시오. Person 은 반드시 이름을 포함해야 합니다.
이름이 ‘홍길동', ‘한석봉' 인 Person 인스턴스를 생성하고, List에 담습니다.
List에 담긴 모든 Person 인스턴스의 이름을 표시하시오.
 */

//1번째 방법

class Person {
  String name;

  Person({
    required this.name,
  });
}


void main () {
// 1. 이름이 ‘홍길동', ‘한석봉' 인 Person 인스턴스 생성
  Person person1 = Person(name: '홍길동');
  Person person2 = Person(name: '한석봉');
  // print(person1.name);
  // print(person2.name);

// 2. List에 담기
  List<Person> list = [];
  list.add(person1);
  list.add(person2);

  for (final list in list) {
    print(list);

    // for문이 list에 있는 인스턴스를 돌아 name 출력. -> 바로 print(list)를 하거면 instance of person만 출력.
  }
}

//2번째 방법

//
// class Person {
//   String name;
//
//   Person({
//     required this.name,
//   });
//
//   @override
//   String toString() {
//     return name;
//   }
// }
//
//
// void main () {
//   Person person1 = Person(name: '홍길동');
//   Person person2 = Person(name: '한석봉');
//
//   List<Person> list = [person1, person2];
//   print(list);
//
// }
