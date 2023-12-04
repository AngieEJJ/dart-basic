void main() {
  List<int> Number = [1, 2, 3, 4, 5];
  List<int> mixnNumber = [1, 3, 2, 5];
  mixnNumber.sort(((a, b) => a - b));

  // print(mixnNumber) = [1,2,3,5];

  for (int i = 0; i < mixnNumber.length; i++) {
    if (Number[i] != mixnNumber[i]) {
      print(Number[i]);
    }
  }
}

// 일단 아래처럼 함수랑 결과를 만들고 그 가운데를 완성해가는 식이야

// void main () {}

//int solution () {
// int result = 0;
// return result;
// }

//무지성 뺑뻉이 = 처음부터 끝까지 돌기 = for in
//contain 쓰는 방법ㅌ