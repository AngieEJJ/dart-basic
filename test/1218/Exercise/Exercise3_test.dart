import 'package:dart_basic/1218/Excercise/Exercise3.dart';
import 'package:test/test.dart';

void main () {
  test('가장 큰 값을 반환합니다.', () {
    expect(findMax([2, 5, 1, 9, 3]), 9);
  });
}