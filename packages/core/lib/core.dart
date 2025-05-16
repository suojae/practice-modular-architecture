library core;

import 'package:core/di/injector.dart';
export 'package:core/di/injector.dart';

// 마이크로패키지 초기화 함수
void microPackageInit() {
  // 의존성 주입 설정
  configureDependencies();

  // 추가적인 초기화 작업 수행
  print('Core module initialized');
}
