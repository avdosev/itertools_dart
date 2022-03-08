import 'package:test/test.dart';

import 'package:itertools/itertools.dart';

void main() {
  test('notNull', () {
    final arr = [null, 1, 2, null, 3].notNull.toList();
    expect(arr, [1, 2, 3]);
  });

  test('compress', () {
    final arr = [1, 2, 3, 4, 5, 6, 7];
    final selectors = [0, 1, 0, 1, 1, 0, 1].map((i) => i == 1).toList();
    final res = arr.compress(selectors).toList();
    expect(res, [2, 4, 5, 7]);
  });

  test('zip2', () {
    final arr = [1, 3, 5, 7];
    final arr2 = [2, 4, 6, 8];
    final zipped = zip2(arr, arr2)
        .map((e) => [e.item1, e.item2])
        .fold<List<int>>([], (prev, e) => prev..addAll(e));
    expect(zipped, [1, 2, 3, 4, 5, 6, 7, 8]);
  });

  test('max', () {
    expect([1, 2, 3].max(), 3);
    expect(<int>[].max(), null);
    expect([-1, -2, -3].max(), -1);
  });

  test('min', () {
    expect([1, 2, 3].min(), 1);
    expect(<int>[].min(), null);
    expect([-1, -2, -3].min(), -3);
  });

  test('concat', () {
    expect([1, 2].concat([3, 4]), [1, 2, 3, 4]);
    expect([1].concat([]), [1]);
    expect([].concat([1]), [1]);
  });

  test('groupby', () {
    final groupResult = groupby(
      [1, 2, 3, 1, 3, 2, 3, 4],
      key: (int item) => item,
    );
    expect(groupResult, {
      1: [1, 1],
      2: [2, 2],
      3: [3, 3, 3],
      4: [4],
    });
  });

  group('minBy/maxBy', () {
    test('empty', () {
      final empty = [];
      expect(
        () => empty.maxBy((a, b) => 1),
        throwsA(isA<StateError>()),
      );
      expect(
        () => empty.minBy((a, b) => 1),
        throwsA(isA<StateError>()),
      );
    });
    test('full', () {
      final first = [1, 2, 3, 4, 5];
      expect(
        first.maxBy(Comparable.compare),
        5,
      );
      expect(
        first.minBy(Comparable.compare),
        1,
      );
      final second = [1, 2, 3, 4, 5].reversed;
      expect(
        second.maxBy(Comparable.compare),
        5,
      );
      expect(
        second.minBy(Comparable.compare),
        1,
      );
    });
  });
}
