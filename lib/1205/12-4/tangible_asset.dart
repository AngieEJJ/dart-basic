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

/* TangibleAsset은 Asset 클래스를 상속하고, Thing 인터페이스를 구현한다.
   Asset 속성의 동작을 확장 + 인터페이스를 통해 특정 동작을 강제!
   Thing 인터페이스의 weight 속성을 구현 + 값을 캡슐화하여 외부에서 안전하게 접근하고 조작
 */

/* 아래 코드도 가능한데, getter/setter 없이 직접 변수를 선언함.
 더 깔끔하기도 하고, interface에는 변수를 둘 수 있지만 두지 않는다.

abstract class TangibleAsset extends Asset implements Thing {
String color;

  @override
  double weight;

  TangibleAsset(
     this.weight, {
     required super.name,
     required super.price,
     required this.color,
      });
}
 */