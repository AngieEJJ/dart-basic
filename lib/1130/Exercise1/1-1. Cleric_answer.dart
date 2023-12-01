/* (문제1)
- 성직자는 이름과 HP를 가지고 있고, 추가로 마법을 사용하기 위한 MP를 가지고 있다.
- Cleric 클래스에 “이름", “HP”, “최대 HP”, “MP”, “최대 MP”를 속성으로 추가 하시오.
- 또한 HP와 최대 HP는 정수로 초기치 50, MP와 최대 MP는 정수로 초기치 10으로 하고,
- 최대 HP와 최대 MP는 상수 필드로 선언 하시오.
*/

import 'dart:math';

class Cleric {
  final int MaxMP = 10;
  final int MaxHP = 50;

  String name;
  int hp = 50;
  int mp = 10;

  Cleric(this.name);


/* (문제2)
성직자는 “셀프 에이드" 라는 마법을 사용할 수 있고, MP를 5소비하는 것으로 자신의 HP 를 최대 HP 까지 회복할 수 있다.
 */
  void selfAid() {
    mp -= 5; // mp = mp-5
    hp = MaxHP;
  }


/* (문제3)
- 성직자는 “기도하기" (pray) 라는 행동을 취할 수 있고, 자신의 MP를 회복한다.
- 이 메소드는 인수에 “기도할 시간(초)"를 지정할 수 있고, 리턴 값은 “실제로 회복된 MP 양" 을 반환한다.
 */

  int pray(int sec) {
    // 회복량은 기도한 시간(초)에 랜덤하게 0 ~ 2포인트의 보정을 한 양이다 (3초 기도하면 회복량은 3 ~ 5 포인트).
    final beforeMP = mp;
    print('beforeMP는 $mp');

    final recoverdMP = sec + Random().nextInt(3);

    mp += recoverdMP; // mp = mp+revocerdMP
    print('recoverdMP는 $mp');

    // 단, 최대 MP 보다 더 회복하는 것은 불가능 하다.
    if (mp > MaxMP) {
      mp = MaxMP;
      print('maxMP는 $mp');
    }
    // 리턴 값은 “실제로 회복된 MP 양" 을 반환한다. (실제 회복된 MP양 = 기존 MP - 회복된 MP)
    return beforeMP - mp;
  }
}
  void main () {
    Cleric cleric = Cleric('AJ');
    cleric.selfAid();
    cleric.pray(2);

}