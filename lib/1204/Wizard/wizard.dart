/*
문제 10-1 에서 작성한 Wand 클래스와 Wizard 클래스에 대해, 아래의 4가지 규칙에 따라 타당성 검사를 추가하시오.
부정한 값이 설정 될 경우에는 “Exception(“에러메세지");” 를 작성하여 프로그램을 중단 시킵니다.
1. 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
2. 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
3. 마법사의 지팡이는 null 일 수 없다.
4. 마법사의 MP는 0 이상이어야 한다.
5. HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)
 */

import 'wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand? _wand;

  Wizard({
    required String name,
    required int hp,
    required int mp,
    required Wand? wand,
  })
      : _name = name,
        _hp = hp,
        _mp = mp,
        _wand = wand;

  // 1. 마법사의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
  set name(String? name) {
    if (name == null || name.length < 3) {
      throw Exception('에러메세지');
    }
    else {
      _name = name;
    }
  }

  // 2. 마법사의 지팡이는 null일 수 없다.
  set wand(Wand? wand) {
    if (wand == null) {
      throw Exception('에러메세지');
    }
    else {
      _wand = wand;
    }
  }

  // 3. 마법사의 MP는 0 이상이어야 한다.
  set mp(int mp) {
    if (mp < 0) {
      throw Exception('에러메세지');
    }
    else {
      _mp = mp;
    }
  }

  // 4. HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)
  set hp(int hp) {
    if (hp < 0) {
      hp = 0;
    }
    else {
      _hp = hp;
    }
  }

  @override
  String toString() {
    return 'Wizard(name: $_name, hp: $_hp, mp: $_mp, wand: $_wand)';
  } // 문자열을 호출하는 toString 메서드를 만들었음

}

void main() {
  Wand wand = Wand(name: 'wand', power: 10); //wand 인스턴스 생성
  Wizard wizard = Wizard(name: 'wizard', hp: 10, mp: 10, wand: wand); //wizard 인스턴스 생성

  wizard.name = 'wizard2'; // wizard 클래스의 name 이라는 setter 호출하여 마법사의 이름 변경 시도
  wand.name = 'wand2';

  print(wizard); // override가 없으면 호출되지 않음.
  print(wand);


}