import 'package:dart_basic/1218/Excercise/Exercise4.dart';
import 'package:test/test.dart';

void main () {
  test('문자열을 뒤집어서 반환해야 합니다.', () =>
      expect(reverseString('Hello'), 'olleH')
  );
}

//void main() {
//   test('String test', () {
//     expect(reverseString(str: 'Hello'), 'olleH');
//     expect(reverseString(str: 'x'), 'x');
//   });
//
//   test('Empty string test', () {
//     expect(reverseString(str: ''), '');
//   });
// }