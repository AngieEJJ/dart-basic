import 'dart:math';

import 'package:collection/collection.dart';




// int findMax(List<int>list) {
//   // return list.max; // list 안의 요소 중 가장 큰 값
// return list.reduce((value, element) => max(value, element));
// }

void main () {
 print(findMax([-4,-5]));
}


int findMax(List<int> a) {
  int result = a[0];
  for (var i in a) {
    if (result < i) {
      result = i;
    }
  }
  return result;
}