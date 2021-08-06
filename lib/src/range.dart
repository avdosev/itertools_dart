class NumRange extends Iterable<int> {
  @override
  final int first;
  @override
  final int last;
  final int step;

  NumRange({required this.first, required this.last, required this.step})
      : assert(step != 0, 'step can`t be zero');

  @override
  int get length => (last - first).abs() ~/ step;

  @override
  Iterator<int> get iterator => _NumIterator(first, last, step);
}

NumRange range({int? first, required int last, int step = 1}) {
  return NumRange(first: first ?? 0, last: last, step: step);
}

class _NumIterator extends Iterator<int> {
  int _first;
  int? _current;
  int _step;
  int _last;

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
