import 'package:collection/collection.dart';

// double solution1 (List<int> numbers) {  // return 값이 있어야 함 -> 없으면 ? 에러
//   if (numbers.length >= 1 && numbers.length <= 100) {
//   }
//   return numbers.average;
// }
//
// int solution2 (int n, int k) {
//   int serviceDrink = n ~/ 10;
//   int result = 0;
//   {
//     if (n >= 10 && n < 1000) {
//       result = 12000 * n + 2000 * k - 2000 * serviceDrink;
//     }
//     else if (n > 0 && n < 10 && k >= n / 10 && k < 1000) {
//       result = 12000 * n + 2000 * (k);
//     }
//   } return result;
// }
//
// solution3 (List<int>numbers, num1, num2) {
//   return  numbers.sublist(num1, num2+1); // 인덱스+1을 해야함
// }


// List<String> strlists = ["we", "are", "the", "world!"];
// List<int> result = [];
//
// void main () {
//   for (int i = 0; i < strlists.length; i++) {
//     final strlistNum = strlists[i].length;
//     // print(strlistNum);
//     result.add(strlistNum); //print(result.add(strlistNum)); -> 에러: 포문이 끝나고 나서 프린트 해야함!
//   }
//   print(result);
// }
// -> 이제 이걸 함수로 만들어보기



List<int>array = [149, 180, 192, 170];
int height = 167;

solution (array, height) {
  for (int i = 0; i < array.length; i++) {
    if (array[i] > height) {
      print(array[i]); // 리스트에 add를 해서 lenght로 뽑기
    }
  }
}

  void main () {
    solution(array, height);
  }






//
// void main () {
//  print(solution1([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
//  print(solution2(64, 6));
//  print(solution3([1, 2, 3, 4, 5], 1, 3));
//  print(solution3([1, 3, 5], 1, 2));
// }