import 'package:dart_basic/1218/Excercise/Exercise3.dart';
import 'package:test/test.dart';

void main () {
  test('가장 큰 값을 반환합니다.', () {
    expect(findMax([2, 5, 1, 9, 3]), 9);
  });
}

// void main() {
// test('Integer list test', () {
// expect(findMax(intList: [2, 5, 1, 9, 3]), 9);
// expect(findMax(intList: [0, -5, -1, -2, 0]), 0);
// expect(findMax(intList: [10]), 10);
// });
//
// test('Empty list test', () {
// expect(findMax(intList: []), null);
// });
// }