import 'package:dart_basic/1218/Excercise/Exercise2.dart';
import 'package:test/test.dart';

void main() {
  test('짝수면 true.', () {
    expect(isEven(4), true);
  });

  test('홀수면 false.', () {
    expect(isEven(3), false);
  });
}
// given, when이 필요없어서 바로 expect로 넘어감
// 내가 만든 isEven은 클래스 없이 사용가능한 Top level이라 import가능