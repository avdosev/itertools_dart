extension ItertoolsNumber<T extends num> on Iterable<T> {
  num sum() {
    return fold<num>(0.0, (prev, cur) => prev + cur);
  }

  double average() {
    final self = this;
    var count = 0;
    num sum = 0;

    for (final e in self) {
      sum += e;
      count++;
    }

    return count > 0 ? sum / count : 0;
  }
}
