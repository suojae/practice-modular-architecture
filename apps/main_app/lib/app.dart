import 'package:flutter/material.dart';
import 'package:core/di/injector.dart';
import 'package:router/router.dart';

/**
 * 앱의 메인 위젯
 * 
 * 애플리케이션의 루트 위젯으로, 앱의 전체 테마와 라우팅을 설정합니다.
 * 각 모듈에서 제공하는 화면들을 통합하여 하나의 완전한 앱으로 구성합니다.
 * 
 * 모듈러 아키텍처에서 이 클래스는 각 기능 모듈을 조합하는 역할을 합니다.
 * 이제 GoRouter를 사용하여 라우팅을 처리합니다. 라우팅 로직은 router 모듈에
 * 캡슐화되어 있으며, RouterService를 통해 접근합니다.
 */
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // RouterService 인스턴스를 의존성 주입을 통해 가져옵니다.
    final RouterService routerService = getIt<RouterService>();

    return MaterialApp.router(
      // 앱 타이틀 설정
      title: 'Modular Architecture Demo',

      // 앱 전체 테마 설정
      theme: ThemeData(primarySwatch: Colors.blue),

      // GoRouter 설정
      // RouterService에서 제공하는 라우터 구성을 사용합니다.
      routerConfig: routerService.router,
    );
  }
}
