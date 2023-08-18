import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ui_kit/ui_kit.dart';

part 'store_repository_part.g.dart';

@riverpod
StoreRepository storeRepository(StoreRepositoryRef ref) {
  return HiveStoreRepository(box: pokemonBox);
}
