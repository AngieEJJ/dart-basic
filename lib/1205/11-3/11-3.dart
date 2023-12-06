
/*
이 클래스를 이용해, 다음 사양을 따르는 PoisonSlime 클래스를 작성하시오
독 슬라임(PoisonSlime) 은, 슬라임 (Slime) 중에서도 특히 “독 공격" 이 되는 것
PoisonSlime 는 아래의 코드로 인스턴스화 되는 클래스임
PoisonSlime poisonSlime = PoisonSlime(‘A’);
1. PoisonSlime 독 공격이 가능한 남은 횟수를 int 형 필드를 가지고 있고 초기값은 5 이다
PoisonSlime attack() 메소드가 호출되면 다음 내용의 공격을 한다
2. 우선, “보통 슬라임과 같은 공격"을 한다
2. “독 공격의 남은 횟수"가 0이 아니면 다음을 추가로 수행한다
3. 화면에 “추가로, 독 포자를 살포했다!” 를 표시
4. 용사의 HP 의 1/5에 해당하는 포인트를 용사의 HP 로부터 감소시키고, “~포인트의 데미지" 라고 표시
5. “독 공격의 남은 횟수" 를 1 감소 시킨다
 */

import 'Hero.dart';
import 'Slime.dart';

class PoisonSlime extends Slime{
  // 1. PoisonSlime 독 공격이 가능한 남은 횟수를 int 형 필드를 가지고 있고 초기값은 5 이다
  int _poisonAtaackConut = 5;

  PoisonSlime(super.suffix); //부모 클래스를 상속받으려면 생성자도 함께 호출해야함.

//2. 우선, “보통 슬라임과 같은 공격"을 한다
  @override
  void attack(Hero hero) {
    super.attack(hero); // 부모 클래스의 공격 동작을 유지해야해서 super 필요.
    // 만약 super.attack(hero);를 사용하지 않는다면, 부모 클래스의 attack 메서드가 호출되지 않고 새로 추가된 자식 클래스 공격만 수행됨.


    if (_poisonAtaackConut > 0) {
     int damage = hero.hp ~/ 5; // 나눗셈의 몫을 구하여 정수로 반환
     hero.hp -= damage;
     _poisonAtaackConut--;


      print ('추가로, 독 포자를 살포했다!');
      print('$damage 포인트 데미지');
    }
  }
}