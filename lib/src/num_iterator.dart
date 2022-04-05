import 'dart:math' as math;

extension ItertoolsNumber<T extends num> on Iterable<T> {
  /// Sum of iterated elements
  num sum() {
    return fold<num>(0.0, (prev, cur) => prev + cur);
  }

  /// Average of iterated elements.
  ///
  /// Uses a length getter.
  ///
  /// Counting all elements may involve iterating through all elements and can therefore be slow.
  num average() {
    final count = length;
    return map((el) => el / count).sum().toDouble();
  }

  /// Math min of iterated elements
  T? min() {
    return fold(null, (prev, el) => prev == null ? el : math.min(prev, el));
  }

  /// Math max of iterated elements
  T? max() {
    return fold(null, (prev, el) => prev == null ? el : math.max(prev, el));
  }
}
