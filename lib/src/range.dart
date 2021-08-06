/// Provide arithmetic progression
class IntRange extends Iterable<int> {
  @override
  final int first;
  final int _last;
  final int step;

  IntRange({required this.first, required int last, required this.step})
      : assert(step != 0, 'step can`t be zero'),
        _last = last;

  @override
  int get length {
    final len = (_last - first).abs() ~/ step.abs();
    final len2 = len - (first + len * step == _last ? 1 : 0);
    return len2 > 0 ? len2 : 0;
  }

  @override
  int get last {
    return first + length * step;
  }

  @override
  Iterable<int> skip(int count) {
    assert(count > 0, 'count must be most zero');
    return IntRange(first: first + step * count, last: _last, step: step);
  }

  /// Returns [Iterable], which provides the inverse of the arithmetic progression.
  ///
  /// Not inverse first and last
  /// ```dart
  /// range(0, 10, 3).reversed().toList() // [9, 6, 3, 0]
  /// ```
  Iterable<int> get reversed {
    return IntRange(first: last, last: first - step, step: -step);
  }

  @override
  Iterator<int> get iterator => _NumIterator(first, _last, step);
}

/// Return iterable [IntRange]
///
/// provide integers from [first] to non-inclusive [last] with [step]
///
/// see more compact variant in [ItertoolsRange]
///
/// ```dart
///
/// range(last: 5) // output: [0, 1, 2, 3, 4]
/// range(first: 2, last: 5) // output: [2, 3, 4]
/// range(first: -10, last: 10, step: 5) // output: [-10, -5, 0, -5]
/// range(first: 1, last: -3) // output: []
/// range(first: 1, last: -3, step: -1) // output: [1, 0, -1, -2]
///
/// ```
IntRange range({int? first, required int last, int step = 1}) {
  return IntRange(first: first ?? 0, last: last, step: step);
}

extension ItertoolsRange on int {
  /// Return iterable [IntRange]
  ///
  /// provide integers from [first] to non-inclusive [last] with [step]
  ///
  /// see less compact variant [range]
  ///
  /// ```dart
  ///
  /// 0.to(5) // output: [0, 1, 2, 3, 4]
  /// 2.to(5) // output: [2, 3, 4]
  /// -10.to(10, step: 5) // output: [-10, -5, 0, -5]
  /// 1.to(-3) // output: []
  /// 1.to(-3, step: -1) // output: [1, 0, -1, -2]
  ///
  /// ```
  IntRange to(int to, {int step = 1}) {
    return IntRange(first: this, last: to, step: step);
  }
}

class _NumIterator extends Iterator<int> {
  final int _first;
  int? _current;
  final int _step;
  final int _last;

  _NumIterator(this._first, this._last, this._step);

  @override
  int get current => _current!;

  bool _completed = false;

  @override
  bool moveNext() {
    if (_completed) return false;

    if (_first == _last) {
      _completed = true;
      return false;
    }

    final now = _current ?? _first;
    var next = now;
    if (_current != null) {
      next += _step;
    }
    // exit when beyond end
    if (_step > 0) {
      if (next >= _last) {
        _current = null;
        _completed = true;
        return false;
      }
    } else {
      if (next <= _last) {
        _current = null;
        _completed = true;
        return false;
      }
    }

    _current = next;
    return true;
  }
}
