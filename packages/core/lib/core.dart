library core;

/**
 * core 모듈
 * 
 * 앱의 핵심 기능과 공통 유틸리티를 제공하는 모듈입니다.
 * 모든 다른 모듈들이 의존하는 기본 모듈로, 의존성 주입(DI) 설정,
 * 네트워크 통신, 로깅, 유틸리티 함수 등 기본적인 인프라를 제공합니다.
 * 
 * 또한 라우터 모듈을 통합하여 앱 전체에서 사용할 수 있는
 * 라우팅 서비스를 제공합니다.
 */

import 'package:core/di/injector.dart';
import 'package:router/router.dart' as router;

// 코어 모듈에서 제공하는 핵심 기능들 export
export 'package:core/di/injector.dart';

// 라우터 모듈의 기능 export
export 'package:router/router.dart';

// 마이크로패키지 초기화 함수
// 모듈이 처음 로드될 때 호출되어 필요한 초기화 작업을 수행합니다.
void microPackageInit() {
  // 의존성 주입 설정 초기화
  // GetIt 싱글톤 인스턴스에 이 모듈이 제공하는 서비스들을 등록합니다.
  configureDependencies();

  // 라우터 모듈 초기화
  router.microPackageInit();

  // 추가적인 초기화 작업 수행
  print('Core module initialized');
}
