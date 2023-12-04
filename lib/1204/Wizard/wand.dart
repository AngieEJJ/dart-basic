class Wand {
  String _name;
  double _power;

  Wand({
    required String name,
    required double power,
  })
      : _name = name,
        _power = power;

  String get name => _name;
  double get power => _power;


  // 1. 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상
  set name(String? name) {
    if (name == null || name.length < 3) {
      throw Exception('에러메세지');
    }
    else {
      _name = name;
    }
  }
  // 2. 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
  set power(double power) {
    if (power < 0.5 || 100 < power) {
      throw Exception('에러메세지');
    }
    else {
      _power = power;
    }
  }
  @override
  String toString () {
    return 'Wand(name: $_name, power: $_power)';
  }

}