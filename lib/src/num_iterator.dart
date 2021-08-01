extension ItertoolsNumber<T extends num> on Iterable<T> {
  num sum() {
    num s = 0;
    for (final item in this) {
      s += item;
    }
    return s;
  }
}
