/* (문제1) Exercise 1에서 작성한 클래스에 관하여 2가지 수정을 진행하시오.
현시점의 Cleric 클래스의 정의에는, 각 인스턴스별로 최대 HP와 최대 MP 필드에 정보를 가지고 있습니다.
하지만, 모든 성직자의 최대 HP 는 50, 최대 MP 는 10으로 정해져 있어, 각 인스턴스가 각각의 정보를 가지는 것은 메모리 낭비이다.
*/

import 'dart:math';

class Cleric {
  static int MaxMP = 10;
  static int MaxHP = 50;

  /* (문제2) 아래의 방침에 따라, 생성자를 추가 하시오
1. 이 클래스는 Cleric(“아서스", hp: 40, mp: 5) 와 같이, 이름, HP, MP 를 지정하여 인스턴스화 할 수 있다
2. 이 클래스는 Cleric(“아서스", hp: 35) 와 같이, 이름과 HP만으로 지정하여 인스턴스화 할 수 있다. 이 때, MP는 최대 MP와 같은 값이 초기화 된다
3. 이 클래스는 Cleric(“아서스") 와 같이 이름만을 지정하여 인스턴스화 할 수 있다. 이 때, HP 와 MP 는 최대 HP와 최대 MP로 초기화 된다
4. 이 클래스는 Cleric() 과 같이 이름을 지정하지 않는 경우에는 인스턴스화 할 수 없다고 한다. (이름이 없는 성직자는 존재 할 수 없음)
5. 생성자는 가능한 한 중복되는 코드가 없도록 작성한다
 */

  String name;
  int hp;
  int mp;

  Cleric(this.name, {this.mp=10, this.hp=10});
  // 2번, 3번, 4번 답. 초기값을 설정했기 때문에 28번째 줄을 ('아서스', hp:35)만 넣어도 오류가 없음.
  // mp는 초기값인 10이 되고, hp는 10으로 설정했기 때문에 초기값이 아닌 10이 됨.

  final hero1 = Cleric('아서스', hp: 40, mp:5);
  // 1번 답. named parameter {} -> 파라미터가 필수

  void selfAid() {
    mp -= 5; // mp = mp-5
    hp = MaxHP;
  }

  int pray(int sec) {
    final beforeMP = mp;
    print('beforeMP는 $mp');

    final recoverdMP = sec + Random().nextInt(3);

    mp += recoverdMP; // mp = mp+revocerdMP
    print('recoverdMP는 $mp');

    if (mp > MaxMP) {
      mp = MaxMP;
      print('maxMP는 $mp');
    }
    return beforeMP - mp;
  }
}
