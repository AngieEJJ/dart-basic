
import 'dart:convert';

import 'package:http/http.dart' as http;


class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  // 생성자 : todo 클래스의 생성자 정의. 클래스 인스턴스를 초기화하고, required 를 통해 필수 매개변수 지정해서, 클래스 인스턴스 생성할때 필요한 값 전달.
  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  // 여기선 굳이 팩토리 안 써도 되긴 함. 팩토리 쓰면 더 좋다는데 그건 나중에 알아도 됨.
  // 메서드: json 데이터를 기반으로한, todo 클래스의 인스턴스 생성하는 역할. json 데이터를 클래스 형식에 맞게 변환해서 인스턴스를 생성해야하니까 필요한거야.
  // Map<String, dynamic> 형식의 json을 받아서 필요한 정보를 추출하여 클래스의 생성자를 호출하고, 그 결과로 클래스의 인스턴스를 반환
  // Factory constructor to create a Todo instance from a Map => 팩토리 생성자가 투두 인스턴스를 만듦
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        completed = json['completed'];

// => 생성자는 클래스의 인스턴스를 초기화하는 데 사용되고, 팩토리 메서드는 특정한 방식으로 클래스의 인스턴스를 생성하는 데 사용
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }

  @override
  String toString() {
    return 'Todo{userId: $userId, id: $id, title: $title, completed: $completed}';
  }
}


//get: 데이터를 요청해서 받아온다. = 데이터 요청
// 하나 받을 때 패턴
void main () {
  Future<Todo> getTodo2(int id) async { //getTodo2라는 id라는 Todo 클래스의 int 값을 받는 함수.
    //요청
     final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
     //future지만 await을 통해 데이터는 스트링으로 변환이 되어 response에 들어감 이제 이 데이터를 response로 부를 수 있음
    //우리가 필요한 정보는 데이터 전체가 아니라 body
    final jsonString = response.body;
    // 얘는 이제 스트링이 된 데이터의 바디임! jsonString이라는 변수에 넣음
    //이제 이 데이터의 바디를 디코드 해서 우리가 알아볼 수 있게 json 형태로 만들자. 즉 Map으로 만들자
    final json = jsonDecode(jsonString);
    //이제 드디어 우리가 원하는 json 형태의 데이터 바디가 생김
     //이제 이 json 형태를 클래스로 호출해서 출력하자. 실수를 없애기 위해
     Todo todoInstance = Todo.fromJson(json);

     print(todoInstance);

     return todoInstance;

     //  return  Todo.fromJson(json);  이거지


  // fromJson이라는 메서드가 인스턴스를 생성하는 역할을 한다. 새로운 인스턴스를 생성하지 않고 기존의 인스턴스를 반환하는 역할을 함. 객체의 생성 방법을 커스터마이징할 수 있습니다.
//이런걸 팩토리 생성자라고 한다.

  // Todo myTodo = Todo.fromJson(json); 같은 뜻임

    //여기서는 json 데이터를 받아와서 Todo 클래스 인스턴스를 생성하고 반환하는 역할
    // -> 이걸 한줄로 쓰면 return Todo.fromJson(JsonDecode(response.body)
    // http.get 기능으로 데이터 받아오고, await으로 스트링 으로 데이터 타입 바꿔주기-> 데이터의 바디만 가져오기 -> 이 스트링을 디코드 해서 제이슨 형태로 만들기 -> 클래스화 해서 사용하기!
  // todo 클래스의 새로운 인스턴스를 생성함.
    //
  }
  }











//post: 데이터를 보낸다. = 데이터가 포함된 요청 => 바디에 담아서 보낸다.