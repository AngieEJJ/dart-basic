void main () {
  String word = 'hello';
  final splitWord = word.split('');
  print('splitWord: $splitWord'); //

  var reverseOrder = splitWord.reversed;
  print('reverseOrder: $reverseOrder');
  print('reverseOrder를 문자로 바꾼 것: ${reverseOrder.join()}');
  print(reverseOrder.join() is String);


  if (word == reverseOrder.join()) {
    print('회문입니다');
  }
  else {
    print('회문이 아닙니다');
  }

  } // word == reverseOdrer가 되지 않는 이유: reverseOrder는 이터러블이라서. 뭔가 바뀌면 이터러블임. 근데 리스트는 그냥 리스트임. 뮤터러블이라서.
// 이터러블은 List.reversed, Map.keys(), Map.values와 같은 반환타입
// 값이 바뀌면 이터러블임.
// Dart에서는 iterable이라는 개념이 있다.
//
// 이것은 반복이 가능한...집단 이란 뜻으로,
//
// list나 array, 등을 의미한다. Map은 iterable이 아니다. 왜냐면 순서가 없으니까.
//
// 하지만 linked Map은 순서가 있으니 iterable이다.
//
//
//
// (자료구조를 알면 좀 더 명확히 될 것이다. iterable은 for처럼 한바퀴돌릴 수 있는 자료구조를 얘기한다,
//
// array나 linked Map은 다음 data의 위치를 알 수 있어서 iterable 하지만,
//
// Map의 경우 Key-value 구조이기 때문에 순환(iterate)하는게 불가능하다)

// void main () {
  // var a = '정은진개짜증나';
  // print(a);
  // print(a.hashCode);
  // a = '진수존멋';
  // print(a);
  // print(a.hashCode);
  //가비지컬렉션
  //immutable mutable
  //참고 cf)
  // ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ'정은진개짜증나'ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
  // ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
  // ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ'진수존멋'ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
  //string = immutable

  // var b = [1, 2, 4];
  // print(b);
  // print(b.hashCode);
  // b.add(3);
  // print(b);
  // print(b.hashCode);

  // ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ' [1,2,3,4];'ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
  // ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
  // ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
  // list = mutable
