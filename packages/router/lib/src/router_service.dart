import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:router/src/app_router.dart';

/**
 * 라우터 서비스
 * 
 * 앱의 라우팅 로직을 캡슐화하는 서비스 클래스입니다.
 * AppRouter와 GoRouter를 사용하여 화면 이동과 라우팅을 처리합니다.
 * 
 * 이 서비스는 다른 모듈에서 화면 전환이 필요할 때 사용합니다.
 * 핵심 기능:
 * - 다른 화면으로 이동
 * - 현재 경로 가져오기
 * - 뒤로 가기
 * - 파라미터를 포함한 라우팅
 */
@singleton
class RouterService {
  final AppRouter _appRouter;

  /// 생성자
  RouterService(this._appRouter);

  /// GoRouter 인스턴스 가져오기
  GoRouter get router => _appRouter.router;

  /// 로그인 화면으로 이동
  void goToLogin(BuildContext context) {
    context.goNamed('login');
  }

  /// 홈 화면으로 이동
  void goToHome(BuildContext context) {
    context.goNamed('home');
  }

  /// 프로필 화면으로 이동
  void goToProfile(BuildContext context) {
    context.goNamed('profile');
  }

  /// 뒤로 가기
  void goBack(BuildContext context) {
    context.pop();
  }

  /// 현재 위치 가져오기
  String getCurrentLocation(BuildContext context) {
    return GoRouterState.of(context).uri.toString();
  }

  /// 특정 이름의 라우트로 이동 (범용 메서드)
  void goToNamed(
    BuildContext context,
    String routeName, {
    Map<String, String>? pathParameters,
    Map<String, dynamic>? queryParameters,
  }) {
    context.goNamed(
      routeName,
      pathParameters: pathParameters ?? const {},
      queryParameters: queryParameters ?? const {},
    );
  }
}
