import 'dart:math';

final items = [1, 2, 3, 4, 5];

void main () {
//   var maxResult = items[0];
//   for (var i = 1; i < items.length; i++) {
//     maxResult = max(items[i], maxResult);
//   }
//   print(maxResult);
// }

  print(items.reduce((e, v) => max(e, v)));
  final result = items.reduce(max);
}


void main() {
  List<int> numbers = [0, 1, 2, 3, 4, 5];

  int sum = numbers.reduce((total, element) {
    return total + element;
  });
  print(sum); // 15

  // 람다식 간소화
  int sum2 = numbers.reduce((total, element) => total + element);
  print(sum2); // 15