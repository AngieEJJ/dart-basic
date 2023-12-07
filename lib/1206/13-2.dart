// 1. 인터페이스 X: X는 추상 인터페이스 -> void a(); 메서드를 정의하고 있음
abstract interface class X {
  void a();
}

// 2. 추상 클래스 Y: X 인터페이스를 구현하는 추상 클래스 -> a 기능을 가지고 있는 상태에서 void b(); 메서드를 추가 정의
abstract class Y implements X {
  void b();
}

// 3. 클래스 A: Y 클래스를 상속 -> Y클래스가 구현한 X 인터페이스의 메서드도 상속받음 -> 따라서 a,b 메서드 모두 가지고 있음. c는 A클래스에서만 존재
class A extends Y {
  @override
  void a() {
    print('Aa');
  }

  @override
  void b() {
    print('Ab');
  }

  void c() {
    print('Ac');
  }
}

class B extends Y {
  @override
  void a() {
    print('Ba');
  }

  @override
  void b() {
    print('Bb');
  }

  void c() {
    print('Bc');
  }
}

// X 클래스 타입의 변수 obj를 만듦. 그런데 A클래스의 인스턴스로 할당됨. => 다형성!
// 변수 obj는 X 인터페이스의 메서드를 호출할 수 있고, 이 메서들은 A 클래스에서 구현된 내용을 실행한다.
// 코드 유연성 높아지고, 추상 클래스니까 다양한 구현체 사용 가능.
void main() {
 X obj = A();
 obj.a();
 // obj.b(); // 실행 불가
 // obj.c(); // 실행 불가

 Y y1 = A();
 Y y2 = B();

 y1.a();
 // y1.b();
 y2.a();
 // y2.b();

 // 13-2. 인스턴스 1개씩 생성
  A a = A();
  B b = B();
// list에 하나씩 담기
  List<Y>list = [];
  list.add(y1);
  list.add(y2);
  list.add(a);
  list.add(b);

// List 의 요소를 차례대로 꺼내 각각의 인스턴스의 b() 메소드를 호출
  list.forEach((element) {
  element.b();
});

}