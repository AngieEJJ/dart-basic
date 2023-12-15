//4. maskdto의 클래스를 (데이터가 들어가 있지) ->  store.dart의 클래스로 바뀌게 하는 매퍼를 익스텐션으로 만드는 것.
import '../dto/mask_dto.dart';
import '../model/store.dart';

extension StoresToStore on Stores {
  Store toStore() {
    //Dto에 있는 Stores 클래스에 있는 데이터를 가져온다.
    return Store(
      name: name ?? '',
      address: addr ?? '주소 없음',
      stock: remainStat ?? 'null',
      type: type != null ? int.parse(type!) : 0,
    );
  }
}
// dto에는 addr이라고 적혀있으니 그대로 가져다 쓰고 싶다면 이렇게 변수명 변경도 가능
// 널러블이기 때문에 널일 때 어떻게 하겠다고 선언도 가능
