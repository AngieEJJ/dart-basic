
import 'package:dart_basic/1215/data_source/mask_api.dart';
import 'package:dart_basic/1215/mapper/mask_mapper.dart';
import 'model/store.dart';

void main() async {
  final api = MaskAPI();

  final dto = await api.getMaskInfoResult(); //maskdto 가져오기

  List<Store> stores = dto.stores //dto 클래스를 활용한다.
      ?.where((e) => e.remainStat != null)    // 내가 원하는 형태로 변환
      .map((e) => e.toStore())    // 모델 클래스로 변환
      .toList() ?? [];

  // ------------------------------------------------------------

  print(stores.toString());
}