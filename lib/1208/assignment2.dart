/*
연습문제 1에서 작성한 StrongBox 클래스에 열쇠의 종류를 나타내는 열거형 KeyType을 정의하고,
다음 내용을 반영하여 StrongBox 클래스를 수정하시오.
열쇠의 종류를 나타내는 필드 변수
열쇠의 종류를 받는 생성자

단, 열쇠의 종류는 다음 4종류로 한정한다. 각 열쇠는 사용횟수의 한도가 정해져 있다.
padlock    (1,024회)
button      (10,000회)
dial             (30,000회)
finger       (1,000,000회)

금고에서 get() 메서드를 호출할 때 마다 사용횟수를 카운트하고 각 열쇠의 사용횟수에 도달하기 전에는 null을 리턴한다.
 */

enum KeyType {
  padlock,
  button,
  dial,
  finger;
}

class StrongBox {
  int _keyTry;
  int _maxTry;
  KeyType keyKind;

  StrongBox(this.keyKind, this._maxTry) : _keyTry = 0;

  int? get() {
    for (int i = 0; i < 1000000; i++) {
      if (_keyTry < _maxTry) {
        _keyTry++;
        return _keyTry;
      }
    }
    return null;
  }
}

void main() {
  StrongBox padlockBox = StrongBox(KeyType.padlock, 1024);
  StrongBox buttonBox = StrongBox(KeyType.button, 10000);
  StrongBox dialBox = StrongBox(KeyType.dial, 30000);
  StrongBox fingerBox =
      StrongBox(KeyType.finger, 1000000); // 함수를 가져다 쓰려면 인스턴스 생성 필요.

  for (KeyType value in KeyType.values) {
    KeyType keyType = KeyType.padlock;

    switch (keyType) {
      case KeyType.padlock:
        int? count = padlockBox.get();
        print('padlock으로 $count번째에 열린다.');
        break;
      case KeyType.button:
        int? count = buttonBox.get();
        print('button으로 $count번째에 열린다');
        break;
      case KeyType.dial:
        int? count = dialBox.get();
        print('dial로 $count번째에 열린다');
        break;
      case KeyType.finger:
        int? count = fingerBox.get();
        print('finger로 $count번째에 열린다');
        break;
      default:
        print(null);
    }
  }
}
