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
}
