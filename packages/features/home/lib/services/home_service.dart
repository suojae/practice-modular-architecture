import 'package:injectable/injectable.dart';

@injectable
class HomeService {
  HomeService();

  Future<List<String>> getItems() async {
    // 실제 구현에서는 API 호출 등 데이터 로직 처리
    await Future.delayed(const Duration(seconds: 1));
    return ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  }
}
