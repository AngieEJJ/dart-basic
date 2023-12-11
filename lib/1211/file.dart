import 'dart:io';

void main () {
  final myFile = File('save.txt');
  myFile.writeAsStringSync('hi'); //
  // 1. 쓰기
  // 2. 생성: write까지 해야 파일이 자동 생성됨.  => writeAsString을 쓰면 계속 돌아가기만 함. 비동기 배울 것임!

  final text = myFile.readAsStringSync();
    // 3. 읽기
    print(text);
  }


