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