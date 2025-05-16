library auth;

/**
 * 인증(Auth) 모듈
 * 
 * 사용자 인증 관련 기능을 담당하는 모듈입니다.
 * 로그인, 로그아웃, 회원가입, 비밀번호 재설정 등
 * 사용자 인증과 관련된 모든 기능을 포함합니다.
 * 
 * 이 모듈은 core 모듈에 의존하며, 다른 모듈에서는
 * 이 모듈이 제공하는 인증 서비스를 사용할 수 있습니다.
 */

import 'package:auth/di/injector.dart';
import 'package:core/core.dart';

// 다른 모듈에서 사용할 컴포넌트 export
// 이를 통해 모듈의 내부 구현은 숨기고 필요한 인터페이스만 노출
export 'package:auth/services/auth_service.dart';
export 'package:auth/screens/login_screen.dart';

/**
 * 인증 모듈 초기화 함수
 * 
 * 앱 시작 시 이 함수가 호출되어 인증 모듈의 의존성을 등록하고
 * 필요한 초기화 작업을 수행합니다.
 */
void microPackageInit() {
  // 인증 모듈의 의존성 주입 설정
  // 이 모듈에서 제공하는 서비스들을 GetIt에 등록
  configureAuthDependencies();

  // 추가적인 초기화 작업 수행
  // 예: 토큰 복원, 인증 상태 초기화 등
  print('Auth module initialized');
}
