import 'package:auth/services/auth_service.dart';
import 'package:core/di/injector.dart';
import 'package:flutter/material.dart';

/**
 * 로그인 화면 위젯
 * 
 * 사용자 로그인을 위한 UI를 제공하는 Stateful 위젯입니다.
 * 사용자명과 비밀번호 입력 필드, 로그인 버튼을 포함합니다.
 */
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

/**
 * 로그인 화면의 상태 클래스
 * 
 * 로그인 화면의 상태를 관리하고 UI를 구성합니다.
 * AuthService를 의존성 주입 받아 로그인 로직을 처리합니다.
 */
class _LoginScreenState extends State<LoginScreen> {
  // 사용자 이름 입력을 위한 컨트롤러
  final _usernameController = TextEditingController();

  // 비밀번호 입력을 위한 컨트롤러
  final _passwordController = TextEditingController();

  // 의존성 주입을 통해 AuthService 인스턴스 가져오기
  final _authService = getIt<AuthService>();

  // 로딩 상태 관리
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 사용자 이름 입력 필드
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 16),
            // 비밀번호 입력 필드
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 24),
            // 로딩 중이면 로딩 인디케이터 표시, 아니면 로그인 버튼 표시
            _isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(onPressed: _login, child: const Text('Login')),
          ],
        ),
      ),
    );
  }

  /**
   * 로그인 처리 메소드
   * 
   * 사용자가 입력한 사용자명과 비밀번호로 로그인을 시도합니다.
   * 성공 시 홈 화면으로 이동하고, 실패 시 오류 메시지를 표시합니다.
   */
  Future<void> _login() async {
    // 로딩 상태 시작
    setState(() {
      _isLoading = true;
    });

    // 사용자 입력 값 가져오기
    final username = _usernameController.text;
    final password = _passwordController.text;

    // AuthService를 사용하여 로그인 시도
    final success = await _authService.login(username, password);

    // 로딩 상태 종료
    setState(() {
      _isLoading = false;
    });

    // 로그인 결과에 따른 처리
    if (success && mounted) {
      // 성공 시 홈 화면으로 이동
      Navigator.of(context).pushReplacementNamed('/home');
    } else if (mounted) {
      // 실패 시 오류 메시지 표시
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Login failed')));
    }
  }

  @override
  void dispose() {
    // 컨트롤러 해제 (메모리 누수 방지)
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
