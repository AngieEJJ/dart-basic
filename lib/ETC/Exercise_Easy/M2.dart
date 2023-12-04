// List<int> A = [30, 15];
// List<int> B = [12, 40];
// var myPick = A; //B
// void main() {
//   if (myPick == A) {
//     print('yes');
//   } else {
//     print('no');
//   }
// }


//무지성으로 함수 만들자

void main () {
 int N = 30;
 int M = 15;

 print(solution(30, 15));
 print(solution(12, 40));
}

String solution (int n, int m) {
  if (n % 2 == 0 && m % 2 == 1) {
  return 'YES';
} else if (n % 2 == 1 && m % 2 == 0) {
  return 'YES';
} // or로 묶어도 되지만 너무 길어지니까 내가 빨리 이해할 수 있는 형태로 하자
return 'NO';

  //함수에서 return 코드가 맨 마지막에 하나 있는게 가장 좋기 떄문에 아래가 더 좋다.
  //중간에 가급적 Return을 하지 말자

//삼항연산 변경 자동완성이 가능함.

// 여러가지 답을 생각하는건 패턴을 많이 보지 않으면 익숙치 않아
// 여러명이서 한 문제를 같이 풀면서 다른 사람 답안과 비교하며 패턴을 찾고 익혀나가는게 좋아.