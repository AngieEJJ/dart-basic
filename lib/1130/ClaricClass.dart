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
  HP = MaxHP;}
  }

  // 회복량은 기도한 시간(초)에 랜덤하게 0 ~ 2포인트의 보정을 한 양이다 (3초 기도하면 회복량은 3 ~ 5 포인트).

  int pray(int second) {
  int plusMP = second + Random().nextInt(3);
  int totalMP = plusMP + MP;
// 더해지는 mp와 현재의 mp를 비교하여 10이 넘는지 아닌지 체크를 해야함.
  if (totalMP <= MaxMP) {
  print ('현재 MP는 $MP이다. $second초 기도하여 +$plusMP회복 성공! 최종 MP는 $totalMP');
  return plusMP;
  }
  else {
    MP = MaxMP;
  print('+$second초 기도하여 +$plusMP 회복 성공했으나, +${totalMP-MaxMP}만 회복 가능. 최종 MP는 $MaxMP');
  }
  return totalMP-MaxMP;


  // 변경사항: 문제에서 원하는 게 기도 메소드는 인수에 “기도할 시간(초)"를 지정할 수 있고, 리턴 값은 “실제로 회복된 MP 양" 을 반환한다고 했음.
  // 1. pray() -> () 안에 int prayTime을 넣는 것으로 변경하여 인수를 지정함 => 이러면 prayTime이 밖에 있어도 가져올 수 있게 되어 같은 클래스에 없다며 빨간 줄이 생기지 않음
  // 2. 리턴값을 만들어줌. 리턴값이 있으면 리턴값과 동일한 데이터 타입으로 void를 바꿔줘야 함. 따라서 pray메소드는 void pray() 가 아니라 int pray()가 되었음
  }
  }

  void main () {
    Cleric cleric = Cleric();
    cleric.selfAid();
    cleric.pray(5);
  }