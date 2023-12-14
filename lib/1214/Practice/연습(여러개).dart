// 여러 개 받을 때 패턴

import 'dart:convert';

import '연습(한개만).dart';
import 'package:http/http.dart' as http;

Future<List<Todo>> getTodos() async{
  // get으로 가져오라고 요청
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/'));
  // 디코드 해서 가져와야 하니까 변수에 넣어주자.
   final jsonString = response.body;
  // 데이터의 바디만 가져와라
  final jsonList = jsonDecode(jsonString) as List<dynamic>;
  //가져온 데이터 바디를 디코드 해주자. 그리고 스트링이니까 리스트로 바꿔주기
  return jsonList.map((e) => Todo.fromJson(e)).toList();
  // 리스트니까 .map 을 활용해서 json 맵 안의 요소들을 Todo 클래스의 인스턴스로 변환한다! 즉 Todo 객체로 변환. 그리고 리스트로 반환.
// return Todo.fromJson(json);
//이거랑 같은데 todos의 경우는 리스트니까 맵 메소드를 추가로 활용함.


}