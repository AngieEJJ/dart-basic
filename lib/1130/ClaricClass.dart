import 'dart:math';

  class Cleric {
  String name = '';
  int HP = 50;
  final int MaxHP = 50;
  int MP = 10;
  final int MaxMP = 10;


  void selfAid() {
  if (MP >= 5) {
  MP -= 5;
  HP = MaxHP;
  }
  }

  int pray(int prayTime) {
  int healing = Random().nextInt(3);
  int healRate = prayTime + healing;

  if (healRate <= 10) {
  print ('기도 $prayTime초 성공! +$healing 회복되어 MP는 $healRate');
  }

  if (healRate > 10) {
  healRate = MaxMP;
  print ('기도 $prayTime초 성공! +$healing 회복되었으나 MP는 $MaxMP');
  }
  return healRate;

  // 변경사항: 문제에서 원하는 게 기도 메소드는 인수에 “기도할 시간(초)"를 지정할 수 있고, 리턴 값은 “실제로 회복된 MP 양" 을 반환한다고 했음.
  // 1. pray() -> () 안에 int prayTime을 넣는 것으로 변경하여 인수를 지정함 => 이러면 prayTime이 밖에 있어도 가져올 수 있게 되어 같은 클래스에 없다며 빨간 줄이 생기지 않음
  // 2. 리턴값을 만들어줌. 리턴값이 있으면 리턴값과 동일한 데이터 타입으로 void를 바꿔줘야 함. 따라서 pray메소드는 void pray() 가 아니라 int pray()가 되었음
  }
  }

  void main () {
    Cleric cleric = Cleric();
    cleric.selfAid();

    cleric.pray(9);
  }