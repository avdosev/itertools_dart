Iterable<T> chain_from_iterables<T>(Iterable<Iterable<T>> iterables) sync* {
  for (final iterable in iterables) {
    yield* iterable;
  }
}
