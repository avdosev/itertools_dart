/// Gets chained inputs from a single iterable argument that is evaluated lazily.
Iterable<T> chain_from_iterables<T>(Iterable<Iterable<T>> iterables) {
  return iterables.expand((element) => element);
}

/// Gets chained inputs from multiple iterable arguments that are evaluated lazily.
/// ```
/// print(chain(1.to(4), [4, 5], 1.to(4)).toList());
/// // output: [1, 2, 3,  4, 5,  1, 2, 3]
/// ```
Iterable<T> chain<T>(
  Iterable<T> first,
  Iterable<T> second, [
  Iterable<T>? third,
  Iterable<T>? fourth,
  Iterable<T>? fifth,
  Iterable<T>? sixth,
]) {
  final elements = [
    first,
    second,
    if (third != null) third,
    if (fourth != null) fourth,
    if (fifth != null) fifth,
    if (sixth != null) sixth,
  ];
  return chain_from_iterables(elements);
}
