import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ui_kit/ui_kit.dart';

part 'client_part.g.dart';

@riverpod
Client httpClient(HttpClientRef ref) {
  return DioClient();
}
