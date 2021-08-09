import 'package:tuple_dart/tuple.dart';

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

  /// Make an iterator that filters elements from data returning only those
  /// that have a corresponding element in selectors that evaluates to True.
  Iterable<T> compress(Iterable<bool> selectors) {
    return zip2(this, selectors)
        .where((element) => element.item2)
        .map((e) => e.item1);
  }

  /// Returns a new lazy [Iterable] with elements that are created by
  /// calling `f` on each element of this `Iterable` in iteration order.
  ///
  /// This method returns a view of the mapped elements. As long as the
  /// returned [Iterable] is not iterated over, the supplied function [f] will
  /// not be invoked. The transformed elements will not be cached. Iterating
  /// multiple times over the returned [Iterable] will invoke the supplied
  /// function [f] multiple times on the same element.
  Iterable<E> mapIndexed<E>(E Function(int index, T item) f) sync* {
    var index = 0;
    for (final item in this) {
      yield f(index++, item);
    }
  }

  Iterable<Tuple2<int, T>> enumerate({int start = 0}) {
    return mapIndexed((index, item) => Tuple2(index + start, item));
  }

  /// Returns a new list with all elements sorted according to natural sort
  /// order.
  List<T> sorted({bool growable = true}) {
    final list = toList(growable: growable);
    list.sort();
    return list;
  }

  /// Returns a new list with all elements sorted according to the order
  /// specified by the [compare] function.
  List<T> sortedBy(int Function(T a, T b) compare, {bool growable = true}) {
    final list = toList(growable: growable);
    list.sort(compare);
    return list;
  }
}

extension ItertoolsNullable<T> on Iterable<T?> {
  Iterable<T> get notNull => where((element) => element != null).whereType<T>();
}

Iterable<Tuple2<int, T>> enumerate<T>(Iterable<T> iterable, {int start = 0}) {
  return iterable.enumerate(start: start);
}
