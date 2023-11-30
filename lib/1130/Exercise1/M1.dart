import 'dart:math';

int A = 10;
int B = 20;
void main() {
  print([A, B].reduce(max));
  if (A == B) {
    print('eq');
  }
}