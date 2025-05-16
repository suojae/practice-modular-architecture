import 'package:flutter/material.dart';
import 'package:core/core.dart' as core;
import 'package:auth/auth.dart' as auth;
import 'package:home/home.dart' as home;
import 'package:profile/profile.dart' as profile;
import 'package:main_app/app.dart';
import 'package:main_app/di/injector.dart';

void microPackageInit() {
  // 의존성 주입 설정
  configureAppDependencies();

  // 추가적인 초기화 작업 수행
  print('Main app initialized');
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // 각 마이크로패키지 초기화
  core.microPackageInit();
  auth.microPackageInit();
  home.microPackageInit();
  profile.microPackageInit();
  microPackageInit();

  runApp(const MyApp());
}
