//1

// int solution(int num1, int num2) {
//   return num1 * num2;
// }
//
// void main (){
//   print(solution(3, 4));
// }

//2

// int solution(int num1, int num2) {
//   return num1 ~/ num2;
// }
//
// void main (){
//   print(solution(10, 5));
// }

//3

// int solution(int num1, int num2) { // 변수 선언을 여기서 하는거니까 위에서 안해도 됨.
//   if (num1 == num2) {
//     return 1;
//   }else {
//   return -1;
//   }
// }
//
// void main () {
//   print(solution(11, 11));
// }

//4
// int solution (int num1, int num2) {
//   return num1 - num2;
// }
//
// void main () {
//   print(solution(2, 3));
// }

//5
// int solution (int num1, int num2) => num1 % num2;
//
// void main () {
//   print(solution(10, 5));
// }

//6

// int currentYear = 2022;
//
// int solution (int age) {
//   int differ = age - 1;
//   return currentYear - differ;
//   }
//
//   void main () {
//   print('$currentYear 기준 40살이므로 ${solution(40)}년생입니다.');
//   }

//7
// int solution (int num1, int num2) {
//   return num1 + num2;
// }
// void main () {
//  print(solution(2, 100));
//
// }

//8 // int를 더블로 선언하면 오류남. num1/num2 나누는거 자체가 더블이니까!
// int solution (int num1, int num2) {
//   return ((num1 / num2) * 1000).round() ; // round가 아니라 floor가 낫다고 봄
// }
//
// void main () {
//   print(solution(7, 3));
// }

//9

// int solution(int angle) {
//   if (0< angle && angle < 90) {
//     return 1;
//   }
//   if (angle == 90) {
//     return 2;
//   }
//   if (90< angle && angle < 180) {
//     return 3;
//   }
//   if (angle == 180) {
//     return 4;
//   }
//
//   return 0; // 함수는 리턴 없으면 void 쓰거나 ? 붙여야 함.
// }
//
// void main () {
//   print(solution(90));
// }

//10

int n = 10;

// void main () {
//   var list = [];
//   var result = 10; // 10 이하 짝수
//   list.add(result); // 리스트에 넣기 or .toList랑 .fold 같이 쓰기..
//   var total = list.fold(0, (total, element) => total + element); // 리스트에 있는 값 누적
//   print(total);
// }
