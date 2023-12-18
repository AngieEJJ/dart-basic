import 'package:dart_basic/1218/Excercise/Exercise1.dart';
import 'package:test/test.dart';


void main() {
  test('핸드폰 번호가 잘 출력되어야 한다.', () {
    // given
    Bank bank = Bank(
        name: '홍길동', address: '서울시 어쩌구 저쩌구', phone: '010-1111-2222');

    // when
    String phoneNumber = bank.phone;

    // then
    expect(phoneNumber, '010-1111-2222');
  });


// 생성자에서 정상적으로 초기화하고 있기 때문에 이 테스트로는 문제를 잡아낼 수 없음.
// 문제를 찾으려면 fromJson을 테스트 해야함.

  test('fromJson 함수는 올바른 Bank 객체를 생성해야 한다.', () {
    // given (준비 -> 테스트 데이터를 생성하거나 초기화하는 단계) json 데이터를 준비함.) 맵
    Map<String, dynamic> jsonData = {
      'name': '홍길동',
      'address': '서울시 어쩌구 저쩌구',
      'phone': '010-1111-2222',
    };

    // when (준비한 데이터를 사용하여 동작 실행 -> bank 객체 생성)
    Bank bank = Bank.fromJson(jsonData); // Bank.fromJson 메서드로 jsondata를 전달하여 bank 클래스 객체 생성.

    // then
    expect(bank.name, '홍길동');
    expect(bank.address, '서울시 어쩌구 저쩌구');
    expect(bank.phone, '010-1111-2222');
  });
}
