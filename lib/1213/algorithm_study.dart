List<int> array = [149, 180, 192, 170];
int height = 167;

solution(array, height) {
  for (int i = 0; i < array.length; i++) {
    if (array[i] > height) {
      print(array[i]); // 리스트에 add를 해서 lenght로 뽑기
    }
  }
}

void main() {
  solution(array, height);
}