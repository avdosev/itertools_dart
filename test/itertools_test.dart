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
}
