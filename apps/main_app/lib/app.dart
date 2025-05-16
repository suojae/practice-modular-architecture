import 'package:flutter/material.dart';
import 'package:auth/auth.dart';
import 'package:home/home.dart';
import 'package:profile/profile.dart';

/**
 * 앱의 메인 위젯
 * 
 * 애플리케이션의 루트 위젯으로, 앱의 전체 테마와 라우팅을 설정합니다.
 * 각 모듈에서 제공하는 화면들을 통합하여 하나의 완전한 앱으로 구성합니다.
 * 
 * 모듈러 아키텍처에서 이 클래스는 각 기능 모듈을 조합하는 역할을 합니다.
 * 각 모듈이 제공하는 화면을 라우팅 시스템에 등록하여 화면 간 이동을 가능하게 합니다.
 */
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 앱 타이틀 설정
      title: 'Modular Architecture Demo',

      // 앱 전체 테마 설정
      theme: ThemeData(primarySwatch: Colors.blue),

      // 초기 라우트 설정 (앱 시작 시 보여줄 화면)
      initialRoute: '/login',

      // 라우트 정의
      // 각 모듈에서 제공하는 화면을 경로에 매핑
      routes: {
        // 인증 모듈의 로그인 화면
        '/login': (context) => const LoginScreen(),

        // 홈 모듈의 홈 화면
        '/home': (context) => const HomeScreen(),

        // 프로필 모듈의 프로필 화면
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
