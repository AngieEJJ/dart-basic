import 'dart:convert';

import 'package:http/http.dart' as http;
import '연습(한개만).dart';

//실습 1 타이틀만 받아오기
void main() async {
  // 여기도 그냥 async 넣으면 돼
  Todo todo = await getTodo(1); // Todo 객체를 이렇게 쓸수 있음! async 있으니까 await 넣어주자. id에 1을 넣으면 1번째를 가져옴
  print(todo.title);
}


  Future<Todo> getTodo(int id) async {
//요청
    final response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/todos/$id"));
//jsonString으로 받아옴
    final jsonString = response.body;
//to Map (우리가 쓰기 좋게)
    final json = jsonDecode(jsonString);
//todo라는 생성자를 만들어서 리턴하자. (모델클래스로 변환 15 ,16번으로 변환한거)
    return Todo.fromJson(json);
  }

