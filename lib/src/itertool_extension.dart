import 'package:tuple/tuple.dart';

import 'zip.dart';

extension Itertools<T> on Iterable<T> {
  /// Make an iterator returning elements from the iterable and saving a copy of each.
  /// When the iterable is exhausted, return elements from the saved copy. Repeats indefinitely.
  Iterable<T> cycle() sync* {
    final saved = <T>[];
    for (final element in this) {
      yield element;
      saved.add(element);
    }

    while (saved.isNotEmpty) {
      yield* saved;
    }
  }

  Iterable<T> compress(Iterable<bool> selectors) {
    return zip2(this, selectors)
        .where((element) => element.item2)
        .map((e) => e.item1);
  }

  Iterable<E> mapIndexed<E>(E Function(int index, T item) f) {
    var index = 0;
    return map<E>((T item) => f(index++, item));
  }

  Iterable<Tuple2<int, T>> enumerate({int start = 0}) {
    return mapIndexed((index, item) => Tuple2(index + start, item));
  }
}

extension ItertoolsNullable<T> on Iterable<T?> {
  Iterable<T> get notNull => where((element) => element != null).whereType<T>();
}

Iterable<Tuple2<int, T>> enumerate<T>(Iterable<T> iterable, {int start = 0}) {
  return iterable.enumerate(start: start);
}
