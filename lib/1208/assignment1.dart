/*
연습문제 1.
다음 조건을 만족하는 금고인 StrongBox 클래스를 정의하시오.
1. 금고 클래스에 담는 인스턴스의 타입은 미정
2. 금고에는 1개의 인스턴스를 담을 수 있음
3. put() 메서드로 인스턴스를 저장하고 get() 메서드로 인스턴스를 얻을 있음
4. get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 됨

 */

class StrongBox<E> { // E: 미정이라 어떤 타입도 들어갈 수 있게 일반화하여 E라고 씀.
E? _gold; // _gold 필드가 non-nullable 타입인 이유? E 제네릭이 nullable이 아니라고 가정되었기 때문,

  void put(E gold) {
  _gold = gold;
}

E? get() {
    return _gold;
}

}