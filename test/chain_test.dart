import 'package:test/test.dart';

import 'package:itertools/itertools.dart';

void main() {
  test('chain', () {
    // [1..9]
    expect(chain(1.to(5), 5.to(10)), 1.to(10).toList());
    expect(chain(1.to(4), [4, 5], 1.to(4)), [1, 2, 3, 4, 5, 1, 2, 3]);
  });
  test('chain with nullable', () {
    // [1..9]
    expect(chain(1.to(5), 5.to(10), null, null, 10.to(15)), 1.to(15).toList());
  });
  test('chain with nullable', () {
    // [1..9]
    expect(
        chain_from_iterables(
          [1.to(5), 5.to(10), 10.to(15)],
        ),
        1.to(15).toList());
  });
}
