class NumRange extends Iterable<int> {
  @override
  final int first;
  final int _last;
  final int step;

  NumRange({required this.first, required int last, required this.step})
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
    return NumRange(first: first + step * count, last: _last, step: step);
  }

  /// Returns [Iterable], which provides the inverse of the arithmetic progression.
  ///
  /// Not inverse first and last
  /// ```dart
  /// range(0, 10, 3).reversed().toList() // [9, 6, 3, 0]
  /// ```
  Iterable<int> get reversed {
    return NumRange(first: last, last: first - step, step: -step);
  }

  @override
  Iterator<int> get iterator => _NumIterator(first, _last, step);
}

NumRange range({int? first, required int last, int step = 1}) {
  return NumRange(first: first ?? 0, last: last, step: step);
}

extension ItertoolsRange on int {
  NumRange to(int to, {int step = 1}) {
    return NumRange(first: this, last: to, step: step);
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
