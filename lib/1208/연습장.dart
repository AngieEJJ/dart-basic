/*
* 연습문제 1에서 작성한 StrongBox 클래스에 열쇠의 종류를 나타내는 열거형 KeyType을 정의하고,
StrongBox 클래스를 수정하시오.
열쇠의 종류를 나타내는 필드 변수
열쇠의 종류를 받는 생성자

* 금고에서 get() 메서드를 호출할 때 마다 사용횟수를 카운트하고 각 열쇠의 사용횟수에 도달하기 전에는 null을 리턴한다.
* 각 열쇠는 사용횟수의 한도가 정해져 있다.
padlock    (1,024회)
button      (10,000회)
dial             (30,000회)
finger       (1,000,000회)

 */

enum KeyType {
  padlock,
  button,
  dial,
  finger;
}

class StrongBox<E> extends KeyType{
  String keyKind;
  int KeyTry = 0;

  StrongBox(this.keyKind, this.KeyTry);

  E? get () {
    keyTry++;
    return null;
  }
}


void main () {
  KeyType keyType = KeyType.padlock;

  switch (keyType) {
    case KeyType.padlock:
      print('padlock');
      break;
    case KeyType.button:
      print('padlock');
      break;
    case KeyType.dial:
      print('padlock');
      break;
    case KeyType.finger:
      print('padlock');
      break;
  }
}
