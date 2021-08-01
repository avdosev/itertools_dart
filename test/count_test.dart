import 'package:test/test.dart';

import 'package:itertools/itertools.dart';

void main() {
  test('count from 0, step default', () {
    final arr = count(0).take(4).toList();
    expect(arr, [0, 1, 2, 3]);
  });

  test('count from positive, step positive', () {
    final arr = count(3, step: 2).take(3).toList();
    expect(arr, [3, 5, 7]);
  });
  test('count from negative, step negative', () {
    final arr = count(3, step: -3).take(3).toList();
    expect(arr, [3, 0, -3]);
  });
}
