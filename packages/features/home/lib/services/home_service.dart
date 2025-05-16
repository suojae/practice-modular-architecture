import 'package:injectable/injectable.dart';

/**
 * 홈 서비스
 * 
 * 홈 화면에 필요한 데이터와 비즈니스 로직을 처리하는 서비스 클래스입니다.
 * 
 * @injectable 애노테이션을 통해 이 클래스는 GetIt 의존성 주입 컨테이너에 자동으로 등록됩니다.
 * 따라서 다른 클래스에서 getIt<HomeService>()로 이 서비스의 인스턴스를 가져올 수 있습니다.
 */
@injectable
class HomeService {
  /**
   * 생성자
   * 
   * 실제 구현에서는 여기에 필요한 의존성(예: API 클라이언트, 저장소 등)을 주입받을 수 있습니다.
   */
  HomeService();

  /**
   * 아이템 목록 조회 메소드
   * 
   * 홈 화면에 표시할 아이템 목록을 가져옵니다.
   * 실제 구현에서는 API나 데이터베이스에서 데이터를 조회합니다.
   * 
   * @return 아이템 목록
   */
  Future<List<String>> getItems() async {
    // 실제 구현에서는 API 호출 등 데이터 로직 처리
    await Future.delayed(const Duration(seconds: 1));
    return ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  }
}
