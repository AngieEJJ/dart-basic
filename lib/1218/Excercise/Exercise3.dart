import 'dart:math';

import 'package:collection/collection.dart';




int findMax(List<int>list) {
  // return list.max; // list 안의 요소 중 가장 큰 값
return list.reduce((value, element) => max(value, element));
}

//<editor-fold>

//</editor-fold>
void main () {
 print( findMax([1,2]));
}

//</editor-fold>

