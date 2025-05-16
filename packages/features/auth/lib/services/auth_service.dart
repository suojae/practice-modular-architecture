import 'package:injectable/injectable.dart';

@injectable
class AuthService {
  AuthService();

  Future<bool> login(String username, String password) async {
    // 실제 구현에서는 API 호출 등 인증 로직 처리
    await Future.delayed(const Duration(seconds: 1));
    return username.isNotEmpty && password.isNotEmpty;
  }

  Future<void> logout() async {
    // 로그아웃 로직
    await Future.delayed(const Duration(seconds: 1));
    print('User logged out');
  }
}
