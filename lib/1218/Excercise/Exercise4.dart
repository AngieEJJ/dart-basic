// String reverseString(String text) {
// return text.split('').reversed.join();
// }


// String text = 'Hello';
// void main () {
//   var textList= text.split('');
//   print(textList);
//   var textReversedList = textList.reversed;
//   print(textReversedList);
//   var textReversedString = textReversedList.join();
//   print(textReversedString);
// }



//String reverseString(String source) => source.split('').fold('', (previousValue, element) => element + previousValue);



//거꾸로 도는 반복문

String a = ''; //HELLO
//
// void main () {
//   print(a.length); // 3 -> 원소의 갯수
//   print(a.length-1); // 2 -> 인덱스. (마지막 원소에 접근하는데 사용되는 인덱스)
// }

String reverseString(String s) {
  String result = '';
  for (int i = a.length - 1; 0 <= i; i--) { // 스트링도 인덱스로 접근 가능.
    result = result + s[i];
  }
  return result;
}

// [3] -> O,  [2] ->L
//result + result = result

//String reverseString(String s) {
//   String result = '';
//   for (var i = s.length - 1; 0 <= i; i--) {
//     result += s[i]; // result = result + s[i]
//   }
//   return result;
// }
//
// void main () {
//   print(reverseString('Hello'));
//
// }