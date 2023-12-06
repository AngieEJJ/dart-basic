import 'Thing.dart';
import 'asset.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String color;
  double _weight;


  TangibleAsset({
    required super.name,
    required super.price,
    required this.color,
    weight
  }) : _weight = weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }

}

// TangibleAsset는 Asset 클래스를 상속하고, Thing 인터페이스를 구현한다.
// 기본적인 자산 속성과 동작을 확장하고, 인터페이스를 통해 특정 동작을 강제하는 것!

//Thing 인터페이스의 weight 속성을 구현하고 값을 캡슐화하여 외부에서 안전하게 접근하고 조작
// => weight 속성과 일관된 동작을 가지게 됨.