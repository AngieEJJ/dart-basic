//Future.timeout(시간) 함수를 사용하면 Future가 특정 시간안에 종료되지 않았을 때 타임아웃 처리를 할 수 있다
// 다음 Future 함수를 실행하고 5초 이내에 완료되지 않으면 “timeout”을 출력하시오.

Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

  void main () async{ // 5초동안 출력안되면 프린트
    String result = await timeoutFuture().timeout(Duration(seconds: 5), onTimeout: () => 'timeout');
    print(result);
  }
  //await으로 작업 완료될때까지 기다림 -> 5초 내애 결과 반환 안되면 -> 콜백함수: onTimeout 호출
