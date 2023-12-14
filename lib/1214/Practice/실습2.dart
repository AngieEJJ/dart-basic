import 'dart:convert';

import '연습(한개만).dart';
import 'package:http/http.dart' as http;



void main () async{
 List <Todo> todos = await getTodos();
todos.forEach((e) {
 print('$e');
 // print('${e.toJson}'); // toString 클래스에 오버라이드 하니까 e가 잘 나옴
});
// 1. 이렇게 forEach로 다 뽑거나

// todos[0].title; // 2. 이런식으로 인덱스로 접근 할 수 있음

}


Future<List<Todo>> getTodos() async {
  //요청
 final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/'));
 //jsonString
final jsonString = response.body;
//to Map
final jsonList = jsonDecode(jsonString) as List<dynamic>;
// jsonList는 타입을 뭘 써도 되기 때문에 as List를 넣어 다이나믹인 애를 List로 캐스팅 (강제변환)을 하자!
 // 근데 사실 데이터를 가져오면 list로 들어오기 때문에 as String을 하게 되면 에러가 남. 다만 다이나믹으로 취급을 하니까 편하게 쓰기 위해 강제 캐스팅 해서 타입 바꾸자는거야.
//인스턴를 써라
return jsonList.map((e) => Todo.fromJson(e)).toList();
// fromjson을 하려면 맵으로 고쳐주는 작업이 필요해. 안에 있는 json 하나 하나를 맵으로 바꾸고 인스턴스화 한다. 쓰기 좋게!
//jsonList.map((e) => e as Map<String,dynamic>); 사실 이거 생략된거임.
//jsonList.map((e) => Todo.fromJson(e as Map<String,dynamic>)).toList(); -> return 값으로 이거 써도 같은데 굳이 안해도 돌아감.
}