import 'dart:convert';
import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;

import 'movie_info_details.dart';


Future<MovieDetails> getMovieDetails(int movieId) async {
  final response = await http.get(Uri.parse("https://api.themoviedb.org/3/movie/$movieId?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1"));
  //요청
  final json = jsonDecode(response.body);
  //body만 가져와서 디코드
  return MovieDetails.fromJson(json);
  //인스턴스화
}


final List movieIdList = [901362, 940721, 983507, 572802, 1113278,
  1022796, 678512, 1192578, 1071215, 940551,
  956920, 839369, 508883, 496450, 1027073,
  792307, 842675, 978870, 840430, 891699,];

void main () async {
  for (int movieId in movieIdList) {
    MovieDetails moviedetails = await getMovieDetails(movieId);
    print(moviedetails.toJson());
  }
}



