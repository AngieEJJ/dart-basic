/*
* 연습문제 1에서 작성한 StrongBox 클래스에 열쇠의 종류를 나타내는 열거형 KeyType을 정의하고,
StrongBox 클래스를 수정하시오.
열쇠의 종류를 나타내는 필드 변수
열쇠의 종류를 받는 생성자

* 금고에서 get() 메서드를 호출할 때 마다 사용횟수를 카운트하고 각 열쇠의 사용횟수에 도달하기 전에는 null을 리턴한다.
* 각 열쇠는 사용횟수의 한도가 정해져 있다.
 */


int keyUsingCnt = 0;

enum KeyType {
  padlock(maxCnt: 1024),
  button(maxCnt: 10000),
  dial(maxCnt: 30000),
  finger(maxCnt: 100000);

  final int maxCnt;

  const KeyType({required this.maxCnt});
}

class StrongBox<E extends KeyType> {
  KeyType _keyKind;
  // KeyType _keyKind = KeyType.padlock; > 이렇게 쓰면 평생 패드록만 나오니까. 변수는 초기값 필요하니까. 스윗치문은 변수가 필수니까.



  StrongBox({required KeyType keyKind}) : _keyKind = keyKind;

  void put(KeyType keyKind) => _keyKind = keyKind;

  KeyType? get() {
    keyUsingCnt ++;
    // enum 타입의 키 종류에 따른 분류
    switch (_keyKind) {
      case KeyType.padlock:
      // enum 키 종류의 시도 제한 횟수 미달시 null, 초과시 키종류 리턴
        return (keyUsingCnt > KeyType.padlock.maxCnt) ? _keyKind : null;
      case KeyType.button:
        return (keyUsingCnt > KeyType.button.maxCnt) ? _keyKind : null;
      case KeyType.dial:
        return (keyUsingCnt > KeyType.dial.maxCnt) ? _keyKind : null;
      case KeyType.finger:
        return (keyUsingCnt > KeyType.finger.maxCnt) ? _keyKind : null;
    }
  }
}

void main() {

  // enum 타입을 순환하며 unlock 시도!
  for (KeyType value in KeyType.values) {
    var strongBox = StrongBox<KeyType>(keyKind: value);

    for (int i = 0; i < 100004; i++) {
      if (strongBox.get() != null) {
        print('Unlocked by ${strongBox.get()}! ${keyUsingCnt - 1}th trying');
        keyUsingCnt = 0;
        break;
      }
    }
  }
}