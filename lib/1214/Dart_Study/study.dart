//1~39까지 돌면서 리스트에 넣도록하면 1~39가 준비된다.

import 'dart:math';

Set<int> randomNum = {};
List<int> excludeNum = [0, 1, 5, 10, 14, 19, 25];

solution() {
  for (int i = 0; i < 6; i++) {
    randomNum.add(Random().nextInt(40));
    if (randomNum.contains(excludeNum)) {
       randomNum.removeAll(excludeNum);
    }
  }
  var result = randomNum.map((e) => '$e번');
  return result;
}

void main() {
print('1회차에 뽑힌 번호들은 ${solution()}입니다.');
print('2회차에 뽑힌 번호들은 ${solution()}입니다.');
}
