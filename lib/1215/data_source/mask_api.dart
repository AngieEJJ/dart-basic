//2. 네트워크 통신 후 Dto 반환
//즉, mask 클래스가 아니라, 전체 다 널러블이 붙은 maskdto 클래스로 반환한다. (차이점 체크!)

import 'dart:convert';
import '../dto/mask_dto.dart';
import 'package:http/http.dart' as http;

class MaskAPI{
  Future<MaskDto> getMaskInfoResult() async {
    final response = await http.get(
        Uri.parse('http://104.198.248.76:3000/mask'));
    return MaskDto.fromJson(jsonDecode(response.body));
  }
}