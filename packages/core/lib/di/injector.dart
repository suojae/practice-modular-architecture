import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// 자동 생성된 파일 임포트 추가
import 'injector.config.dart';

/**
 * GetIt 싱글톤 인스턴스
 * 
 * 전체 앱에서 사용되는 서비스 로케이터(Service Locator) 인스턴스입니다.
 * 모든 서비스와 컴포넌트는 이 인스턴스를 통해 등록되고 검색됩니다.
 * 이를 통해 의존성 주입을 구현하고 모듈 간의 결합도를 낮출 수 있습니다.
 */
final GetIt getIt = GetIt.instance;

/**
 * 의존성 구성 함수
 * 
 * @InjectableInit 애노테이션은 build_runner를 통해
 * 의존성 주입 코드를 자동으로 생성하도록 지시합니다.
 * 모든 @injectable 애노테이션이 붙은 클래스들이
 * 자동으로 GetIt 인스턴스에 등록됩니다.
 */
@InjectableInit()
void configureDependencies() {
  // extension 메소드로 생성된 init 사용
  // 자동 생성된 코드에 의해 GetIt에 서비스 등록
  getIt.init();
}
