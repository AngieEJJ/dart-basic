//양의 정수 n이 주어졌을 때, n의 팩토리얼(factorial) 값을 반환하는 함수를 작성하세요.
// 팩토리얼은 1부터 n까지의 모든 양의 정수를 곱한 값입니다.
// 예시: n이 5일 때, 5의 팩토리얼 값은 1 x 2 x 3 x 4 x 5 = 120이므로, 함수는 120을 반환해야 합니다.

void main () {
  var number = 5;
  var plusNumber = 1;
for (int i = 1 ; i <= number; i++) {
  // print (i);
  plusNumber = plusNumber * i;
 }
print(plusNumber);
}


//5*4*3*2*1
//6*5*4*3*2*1
//공통된거 생각해보기
// 모든건 1로 끝남
// 5라면 5개 곱하고 6은 6개 곱하고
// 하나씩 더해서 곱해주기
// 1*(1+1)*(1+2) ... *(number)

//

