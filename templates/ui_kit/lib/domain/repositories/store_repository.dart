abstract class StoreRepository<T> {
  Future<T?> get(dynamic id);
  Future<void> put(String id, T object);
}
