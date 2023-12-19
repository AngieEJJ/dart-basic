import 'dart:convert';
import 'package:http/http.dart' as http;
import 'movie.dart';



Future<Movie> getMovieInfo() async {
  final response = await http.get(Uri.parse("https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1"));
  //요청
  final json = jsonDecode(response.body);
  //body만 가져와서 디코드
  // print(json);
  return Movie.fromJson(json);
}//인스턴스화

void main () async{
Movie movie = await getMovieInfo();
print(movie); // movie 는 리스트가 아니라서 for문 못씀
// movie.results.forEach((e) => print(e.toJson())); //toJson = toString()
}
