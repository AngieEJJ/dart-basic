import 'dart:io';

void main () {
  performTask();
}

void performTask() async{
  task1();
 String result = await task2();
 //print(result);
 task3();
}

void task1() {
  print('Task1 끝');
}

Future <String> task2() async {
  String result = '널';
  Duration duration = Duration(seconds: 2);
  await Future.delayed(duration, () { // await은 Future.delayed의 완료를 기다리지만 콜백함수의 실행이 끝나는건 기다리는게 아님!!
    print('Task2 100,000명 정보 호출 끝');
  });
  return result;
// await 을 넣었을때 뻈을 때 차이 정도만 정리하자.
}

void task3() {
  print('Task3 끝');
}
