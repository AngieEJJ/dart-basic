//3. 내가 사용할 모델 클래스 간단히 구성하기 (데이터 전체가 아니라 사용할 것만 가져오기)
//이때 JsonSerializable 라이브러리를 사용
//generator에 build runner build 이용하면 됨!!


import 'package:json_annotation/json_annotation.dart';
part 'store.g.dart'; // 얘도 넣어주기

@JsonSerializable(explicitToJson: true)

class Store {
  String address;
  String name;
 // 약국 정보 전체를 가져오지 않고 원하는 것만 가져옴.

  Store({
    required this.address,
    required this.name,
  });

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  Map<String, dynamic> toJson() => _$StoreToJson(this);

}