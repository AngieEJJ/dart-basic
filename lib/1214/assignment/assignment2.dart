import 'dart:convert';
import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import 'Movie.dart';



Future<Movie> getMovieInfo() async {
  final response = await http.get(Uri.parse("https://api.themoviedb.org/3/movie/${movieId}?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1"));
  //요청
  final json = jsonDecode(response.body);
  //body만 가져와서 디코드
  return Movie.fromJson(json);
  //인스턴스화
}


void main () async{
  Movie movie = await getMovieInfo();
  movie.results.forEach((e) => print(e.toJson()));
}