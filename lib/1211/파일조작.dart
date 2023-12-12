// 파일을 복사하는 함수를 작성하시오.
// 원본 파일 경로와 복사할 파일 경로는 프로그램 실행시 파라미터로 전달되는 것으로 하고, 버퍼링이나 에러 처리는 하지 않는다.

import 'dart:io';

void main () {

  final file = File('save.txt');
  final copyFile = File('target.txt');

  file.writeAsStringSync('original2');
//   copyFile.writeAsStringSync('copy');
//
//   copyFile.writeAsStringSync(file.readAsStringSync()); // 복사 = 원본 파일 읽어서, 읽어온 내용을 복사할 파일에 write로 써주기
//
// final text = copyFile.readAsStringSync();
// print(text); // 복사한 결과
//Source에 있는걸 읽어서 target에 쓰기. 이게 바로 복사!


copy ('save.txt' , 'target.txt'); // 함수호출
}

void copy(String save, String target) { // copy 함수 이용
  File(save).copySync(target);
  print('복사완료');
}

// 복사 순서는 읽어서 쓰는거다. 따라서 강사님 코드 보면 read write 순서로 되어 있다. 굳이 파일을 두개 만들지 않았는데 바로 복사 파일도 생김
// 아 내꺼가 한줄 버전이구나. 근데 가독성 안 좋아짐.