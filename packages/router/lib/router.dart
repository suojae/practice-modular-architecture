library router;

/**
 * 라우터(Router) 모듈
 * 
 * 앱의 라우팅과 내비게이션을 담당하는 모듈입니다.
 * GoRouter를 사용하여 라우팅을 구현하고 있으며,
 * 모든 화면 이동과 관련된 로직을 캡슐화합니다.
 * 
 * 이 모듈은 core 모듈에 의존하며, 다른 모듈들은
 * 이 모듈이 제공하는 라우팅 서비스를 사용할 수 있습니다.
 */

import 'package:router/di/injector.dart';
import 'package:core/core.dart';

// 외부에서 사용할 컴포넌트 노출
export 'package:router/src/router_service.dart';
export 'package:go_router/go_router.dart';

/**
 * 라우터 모듈 초기화 함수
 * 
 * 앱 시작 시 이 함수가 호출되어 라우터 모듈의 의존성을 등록하고
 * 필요한 초기화 작업을 수행합니다.
 */
void microPackageInit() {
  // 라우터 모듈의 의존성 주입 설정
  configureRouterDependencies();

  // 추가적인 초기화 작업
  print('Router module initialized');
}
