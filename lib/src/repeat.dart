Iterable<T> repeat<T>(T object, [int? count]) sync* {
  while (count == null || count >= 0) {
    yield object;
  }
}
