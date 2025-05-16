library home;

/**
 * 홈(Home) 모듈
 * 
 * 앱의 메인 화면과 관련된 기능을 담당하는 모듈입니다.
 * 사용자가 로그인 한 후 보게 되는 주요 화면과 기능을 포함합니다.
 * 
 * 이 모듈은 core 모듈에 의존하며, 다른 모듈(auth, profile 등)과
 * 통합하여 완전한 기능을 제공합니다.
 */

import 'package:home/di/injector.dart';
import 'package:core/core.dart';

// 다른 모듈에서 사용할 컴포넌트 export
// 이를 통해 모듈의 내부 구현은 숨기고 필요한 인터페이스만 노출
export 'package:home/services/home_service.dart';
export 'package:home/screens/home_screen.dart';

/**
 * 홈 모듈 초기화 함수
 * 
 * 앱 시작 시 이 함수가 호출되어 홈 모듈의 의존성을 등록하고
 * 필요한 초기화 작업을 수행합니다.
 */
void microPackageInit() {
  // 홈 모듈의 의존성 주입 설정
  // 이 모듈에서 제공하는 서비스들을 GetIt에 등록
  configureHomeDependencies();

  // 추가적인 초기화 작업 수행
  // 예: 데이터 프리로드, 상태 초기화 등
  print('Home module initialized');
}
