import 'Thing.dart';
import 'asset.dart';

abstract class InTangibleAsset extends Asset implements Thing{
  int patent;
  double _weight;

  InTangibleAsset({
    required super.name,
    required super.price,
    required this.patent,
    weight
  }) : _weight = weight;
  // 생성자가 호출될 때, weight 매개변수에 값이 전달되면 _weight에 그 값을 할당 = 초기화

  @override
  double get weight => _weight;

  @override
  set weight(double weight) {
    _weight = weight;
  }
// weight: 메서드 이름
// (double weight): 매개변수로 전달되는 값=> 외부에서 Setter를 호출할 때 제공되는 값
// { _weight = weight; } : 메서드 본문 => 속성인 _weight에 전달된 값을 할당
// => 이 Setter 메서드를 사용하면 클래스 외부에서 weight 속성에 값을 할당할 수 있음
}
