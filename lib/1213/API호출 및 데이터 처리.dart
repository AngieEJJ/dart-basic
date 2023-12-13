import 'dart:convert';

Future<String> getMovieInfo() async { // String 반환하는 future 함수: 나중에 실행하겠다고 선언
  await Future.delayed(Duration(seconds: 2)); // await: 정보를 2초 동안 기다린 후에 받아서 jsonEncode해서 반환
  final mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1977,
  };
  return jsonEncode(mockData); // 인코드가 되어 있으니 디코드 해서 키 값으로 가져오기
}

class MockData {
  String title;
  String director;
  int year;

  MockData({
    required this.title,
    required this.director,
    required this.year,
  });

  MockData.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        director = json['director'],
        year = json['year'];
  }


void main() async {
String mockDataInfo = await getMovieInfo(); // getMovieInfo가 완료될때까지 기다렸다가 결과를 받음
Map<String, dynamic> result = jsonDecode(mockDataInfo); // 디코딩해서 맵으로 받음
print(result['director']); // 키 값으로 찾기!

}
