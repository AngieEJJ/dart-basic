void main() {
  List<int> data = [5, 8, 19, 25, 31];
  List<int> result = [];

  for (int i = data.length - 1; i > 0; i--) {
    result.add(data[i] - data[i - 1]);
  }

  print(result);
}
