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
    return zip2(this, selectors).where((element) => element.item2).map((e) => e.item1);
  }

  
}
