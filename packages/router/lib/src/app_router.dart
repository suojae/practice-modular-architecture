import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:auth/screens/login_screen.dart';
import 'package:home/screens/home_screen.dart';
import 'package:profile/screens/profile_screen.dart';

/**
 * 앱 라우터 클래스
 * 
 * 앱의 라우팅 구성을 정의하고 관리하는 클래스입니다.
 * GoRouter 패키지를 사용하여 라우팅을 구현합니다.
 * 
 * 이 클래스는 모든 화면에 대한 경로를 정의하고,
 * 화면 전환, 중첩 라우팅, 경로 파라미터 처리 등의 기능을 제공합니다.
 */
@singleton
class AppRouter {
  /**
   * GoRouter 인스턴스
   * 
   * 앱의 모든 라우팅을 처리하는 중앙 라우터입니다.
   * 경로 정의, 내비게이션, 파라미터 처리 등의 기능을 제공합니다.
   */
  late final GoRouter router;

  /**
   * 생성자
   * 
   * AppRouter 인스턴스를 생성하고 초기화합니다.
   * 라우트 정의와 초기 설정을 수행합니다.
   */
  AppRouter() {
    router = GoRouter(
      // 라우터 디버그 로그 활성화 (개발 중에만 사용)
      debugLogDiagnostics: true,

      // 초기 경로
      initialLocation: '/login',

      // 모든 라우트 정의
      routes: [
        // 로그인 화면 라우트
        GoRoute(
          path: '/login',
          name: 'login',
          builder: (context, state) => const LoginScreen(),
        ),

        // 홈 화면 라우트
        GoRoute(
          path: '/home',
          name: 'home',
          builder: (context, state) => const HomeScreen(),
        ),

        // 프로필 화면 라우트
        GoRoute(
          path: '/profile',
          name: 'profile',
          builder: (context, state) => const ProfileScreen(),
        ),
      ],

      // 에러 페이지 핸들러
      errorBuilder:
          (context, state) => Scaffold(
            appBar: AppBar(title: const Text('Error')),
            body: Center(child: Text('Page not found: ${state.uri.path}')),
          ),
    );
  }
}
