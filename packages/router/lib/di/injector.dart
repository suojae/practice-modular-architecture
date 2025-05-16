import 'package:core/di/injector.dart';
import 'package:injectable/injectable.dart';
import 'package:router/src/app_router.dart';
import 'package:router/src/router_service.dart';

/**
 * 이 파일은 Router 모듈의 의존성 주입 설정을 담당합니다.
 * 라우터 서비스와 관련 클래스들을 GetIt 컨테이너에 등록합니다.
 */

// 자동 생성될 파일 임포트
// build_runner를 실행하면 생성됩니다.
// import 'injector.config.dart';

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)
void configureRouterDependencies() {
  // 자동 생성된 코드에서 init 함수를 호출하여
  // 라우터 모듈의 모든 서비스를 GetIt에 등록
  // 빌드 후 주석을 제거하세요
  // init(getIt);

  // 빌드 전에는 수동으로 서비스 등록
  // 이 코드는 build_runner 실행 후 제거해도 됩니다
  registerRouterServices();
}

/// build_runner 실행 전 임시 서비스 등록
void registerRouterServices() {
  // AppRouter 등록
  getIt.registerSingleton<AppRouter>(AppRouter());

  // RouterService 수동 등록
  getIt.registerSingleton<RouterService>(RouterService(getIt<AppRouter>()));
}
