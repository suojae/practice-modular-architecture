import 'package:flutter/material.dart';
import 'package:main_app/app.dart';
import 'package:core/core.dart' as core;
import 'package:auth/auth.dart' as auth;
import 'package:home/home.dart' as home;
import 'package:profile/profile.dart' as profile;
import 'package:main_app/di/injector.dart';

/**
 * 앱의 메인 진입점
 * 
 * 앱이 시작될 때 호출되는 함수입니다.
 * 모든 모듈을 초기화하고 메인 앱을 실행합니다.
 * 
 * 모듈러 아키텍처에서는 각 모듈이 독립적으로 초기화되어야 하며,
 * 여기서는 각 모듈의 microPackageInit() 함수를 호출하여 이를 수행합니다.
 * 
 * 코어 모듈이 라우터 모듈을 통합하므로 별도로 초기화할 필요가 없습니다.
 */
void main() {
  // Flutter 위젯 바인딩 초기화
  // 네이티브 플랫폼과의 통신 채널 설정
  WidgetsFlutterBinding.ensureInitialized();

  // 각 마이크로패키지(모듈) 초기화
  // 의존성 주입 및 모듈별 초기화 작업 수행

  // 1. 코어 모듈 초기화 (가장 먼저 초기화되어야 함)
  // 코어 모듈이 라우터 모듈도 함께 초기화합니다.
  core.microPackageInit();

  // 2. 기능 모듈들 초기화
  auth.microPackageInit();
  home.microPackageInit();
  profile.microPackageInit();

  // 3. 메인 앱 초기화
  // 모듈을 통합하고 앱 수준의 의존성 등록
  configureAppDependencies();
  print('Main app initialized');

  // 4. 앱 실행
  // MyApp 위젯을 루트로 하는 Flutter 앱 실행
  runApp(const MyApp());
}
