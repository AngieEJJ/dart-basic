import 'dart:io';

//sample.csv 파일을 읽어와서 “한석봉" 이라는 문자열이 있는지 찾고,
//있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오.
// (async - await 사용할 것)
// 함수를 실행할 때 파일을 찾을 수 없는 경우 예외 처리를 수행하시오.

Future<bool> findName() async {
  File myFile = File('sample.csv');
  File copyFile = File('sample_copy4.csv');

  final readText = await myFile.readAsString(); //async 쓰려고 뺐음
  print(readText);
  final result = readText.contains('한석봉');
  if (result == true) {
    final result2 = readText.toString().replaceAll('한석봉', '김석봉');
    // print(result2);
    copyFile.writeAsStringSync(result2);
  }
  return result;
}

void copy(String sample, String sample_copy4) {
  File(sample).copy(sample_copy4);
}

void main() async {
  try {
    findName();
    //파일을 찾을 수 없는 경우: 파일이 없는 경우
  } catch (e) {
  print('에러발생');
  }
}
