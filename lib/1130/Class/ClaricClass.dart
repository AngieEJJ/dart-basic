import 'dart:math';

  class Cleric {
    String name = '';
    int HP = 50;
    final int MaxHP = 50;
    int MP = 4;
    final int MaxMP = 10;


    void selfAid() {
      if (MP >= 5) {
        MP -= 5;
        HP = MaxHP;
      }
    }

    int pray(int second) {
      int BonusMP = Random().nextInt(3);
      int plusMP = second + BonusMP;
      int totalMP = plusMP + MP;
// 더해지는 mp와 현재의 mp를 비교하여 10이 넘는지 아닌지 체크를 해야함.
      if (totalMP <= MaxMP) {
        print(
            '현재 MP는 $MP이다. $second초 기도하고 +$BonusMP 얻어 +$plusMP회복 성공했다. 최종 MP는 $totalMP');
        return plusMP;
      }
      else {
        print('현재 MP는 $MP이다. +$second초 기도하고 +$BonusMP 얻어 +$plusMP회복 성공했다. 그런데 최대 얻을 수 있는 MP는 $MaxMP 이므로 ${MaxMP-MP}만큼만 회복할 수 있다');
      }
      return MaxMP-MP;
    }
  }
    void main() {
      Cleric cleric = Cleric();
      cleric.selfAid();
      cleric.pray(10);
    }


    // 변경사항: 문제에서 원하는 게 기도 메소드는 인수에 “기도할 시간(초)"를 지정할 수 있고, 리턴 값은 “실제로 회복된 MP 양" 을 반환한다고 했음.
    // 1. pray() -> () 안에 int prayTime을 넣는 것으로 변경하여 인수를 지정함 => 이러면 prayTime이 밖에 있어도 가져올 수 있게 되어 같은 클래스에 없다며 빨간 줄이 생기지 않음
    // 2. 리턴값을 만들어줌. 리턴값이 있으면 리턴값과 동일한 데이터 타입으로 void를 바꿔줘야 함. 따라서 pray메소드는 void pray() 가 아니라 int pray()가 되었음

