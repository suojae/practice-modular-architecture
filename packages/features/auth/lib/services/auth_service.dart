import 'package:injectable/injectable.dart';

/**
 * 인증 서비스
 * 
 * 사용자 인증과 관련된 모든 비즈니스 로직을 처리하는 서비스 클래스입니다.
 * 
 * @injectable 애노테이션을 통해 이 클래스는 GetIt 의존성 주입 컨테이너에 자동으로 등록됩니다.
 * 따라서 다른 클래스에서 getIt<AuthService>()로 이 서비스의 인스턴스를 가져올 수 있습니다.
 */
@injectable
class AuthService {
  /**
   * 생성자
   * 
   * 실제 구현에서는 여기에 필요한 의존성(예: HttpClient, 저장소 등)을 주입받을 수 있습니다.
   */
  AuthService();

  /**
   * 로그인 메소드
   * 
   * 사용자 이름과 비밀번호를 검증하고 인증을 수행합니다.
   * 
   * @param username 사용자 이름
   * @param password 비밀번호
   * @return 로그인 성공 여부
   */
  Future<bool> login(String username, String password) async {
    // 실제 구현에서는 API 호출 등 인증 로직 처리
    await Future.delayed(const Duration(seconds: 1));
    return username.isNotEmpty && password.isNotEmpty;
  }

  /**
   * 로그아웃 메소드
   * 
   * 현재 사용자의 세션을 종료하고 인증 정보를 삭제합니다.
   */
  Future<void> logout() async {
    // 로그아웃 로직
    await Future.delayed(const Duration(seconds: 1));
    print('User logged out');
  }
}
