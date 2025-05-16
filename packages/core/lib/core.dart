library core;

/**
 * core 모듈
 * 
 * 앱의 핵심 기능과 공통 유틸리티를 제공하는 모듈입니다.
 * 모든 다른 모듈들이 의존하는 기본 모듈로, 의존성 주입(DI) 설정,
 * 네트워크 통신, 로깅, 유틸리티 함수 등 기본적인 인프라를 제공합니다.
 */

import 'package:core/di/injector.dart';
export 'package:core/di/injector.dart';

// 마이크로패키지 초기화 함수
// 모듈이 처음 로드될 때 호출되어 필요한 초기화 작업을 수행합니다.
void microPackageInit() {
  // 의존성 주입 설정 초기화
  // GetIt 싱글톤 인스턴스에 이 모듈이 제공하는 서비스들을 등록합니다.
  configureDependencies();

  // 추가적인 초기화 작업 수행
  print('Core module initialized');
}
