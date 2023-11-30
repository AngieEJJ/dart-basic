List<int> cookie = [1, 1, 1, 1, 1, 1, 1, 1, 1];
List<int> scookie = [1, 1, 1];

void main() {
  var original = cookie.length;
  var shortage = original - scookie.length;
  // print(original);
  // print(shortage);

  if (scookie == 9) {
    print('OK');
  } else if (scookie != 9) {
    print(shortage);
  }
  ;
}