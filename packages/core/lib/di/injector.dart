import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// 자동 생성된 파일 임포트 추가
import 'injector.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  // extension 메소드로 생성된 init 사용
  getIt.init();
}
