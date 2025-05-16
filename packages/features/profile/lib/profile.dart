library profile;

/**
 * 프로필(Profile) 모듈
 * 
 * 사용자 프로필 관련 기능을 담당하는 모듈입니다.
 * 사용자 정보 조회, 수정 등 프로필 관리와 관련된 모든 기능을 포함합니다.
 * 
 * 이 모듈은 core 모듈에 의존하며, 다른 모듈에서는
 * 이 모듈이 제공하는 프로필 서비스를 사용할 수 있습니다.
 */

import 'package:profile/di/injector.dart';
import 'package:core/core.dart';

// 다른 모듈에서 사용할 컴포넌트 export
// 이를 통해 모듈의 내부 구현은 숨기고 필요한 인터페이스만 노출
export 'package:profile/services/profile_service.dart';
export 'package:profile/screens/profile_screen.dart';

/**
 * 프로필 모듈 초기화 함수
 * 
 * 앱 시작 시 이 함수가 호출되어 프로필 모듈의 의존성을 등록하고
 * 필요한 초기화 작업을 수행합니다.
 */
void microPackageInit() {
  // 프로필 모듈의 의존성 주입 설정
  // 이 모듈에서 제공하는 서비스들을 GetIt에 등록
  configureProfileDependencies();

  // 추가적인 초기화 작업 수행
  // 예: 프로필 데이터 캐시 초기화 등
  print('Profile module initialized');
}
