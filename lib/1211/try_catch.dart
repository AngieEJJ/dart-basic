// 다음과 같은 프로그램을 작성, 실행 후 runtime error 를 발생하시오
// 코드를 수정하여 try-catch() 문을 사용하여 예외처리를 하시오. 예외처리에는 다음의 처리를 수행하시오.
// 예외가 발생하면 0으로 처리

// final numString = '10.5';
// int num = int.parse(numString);
//
// void main () {
//   try {
//     print(num); // 에러 발생 코드
//   } catch (e) { // 에러 정보 담고 있는 객체
//     int num = 0;
//     print(num);// 에러 발생하면 실행시킬 코드
//   }
// }

// void main () {
//   int parseInt = parse('10.5');
//   print(parseInt);
// }
//
// int parse(String numString) {
//   int num;
//   try {
//     num = int.parse(numString);
//   } catch (e) {
//     num = 0;
//   }
//     return num;
//   }












// void main () {
//   var a = 10;
//   var b = "20";
//   var c = int.parse(b); // string을 int로 변환
//   print(a+c); // 결과: 30
// }

// int parse(String numString) {
