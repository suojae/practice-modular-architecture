library profile;

import 'package:profile/di/injector.dart';
import 'package:core/core.dart';

// Export components to be used by other modules
export 'package:profile/services/profile_service.dart';
export 'package:profile/screens/profile_screen.dart';

// 마이크로패키지 초기화 함수
void microPackageInit() {
  // 의존성 주입 설정
  configureProfileDependencies();

  // 추가적인 초기화 작업 수행
  print('Profile module initialized');
}
