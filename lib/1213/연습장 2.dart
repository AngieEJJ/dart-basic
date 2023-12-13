void main () {
  myFunction();
}

void myFunction() {
  print('start');

  Future.delayed(Duration(seconds:2), () {
    print('2 seconds');
});
  print('end');
}