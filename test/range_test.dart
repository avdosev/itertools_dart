import 'package:test/test.dart';

import 'package:itertools/itertools.dart';

void main() {
  test('default positive range', () {
    final arr = range(last: 5).toList();
    expect(arr, [0, 1, 2, 3, 4]);
  });

  test('default negative range', () {
    final arr = range(last: -10).toList();
    expect(arr, []);
  });

  test('default zero range', () {
    final arr = range(last: 0).toList();
    expect(arr, []);
  });

  test('positive range with positive step', () {
    final arr = range(first: 0, last: 5, step: 2).toList();
    expect(arr, [0, 2, 4]);
  });

  test('positive range with negative step', () {
    final arr = range(first: 0, last: 5, step: -2).toList();
    expect(arr, []);
  });

  test('negative range with negative step', () {
    final arr = range(first: 0, last: -5, step: -2).toList();
    expect(arr, [0, -2, -4]);
  });

  test('negative range with positive step', () {
    final arr = range(first: 0, last: -5, step: 2).toList();
    expect(arr, []);
  });

  test('range skip', () {
    final arr = range(first: 0, last: 5, step: 2).skip(5).toList();
    expect(arr, []);
  });

  test('range reversed', () {
    final ranges = [
      range(first: 0, last: 10),
      range(first: 0, last: 10, step: 3),
      range(first: 1, last: 10, step: 3),
      range(first: 10, last: 0, step: -3),
      range(first: 10, last: -10, step: -3),
    ];
    for (final r in ranges) {
      expect(r.reversed, r.toList().reversed);
    }
  });
}
