/// Make an iterator that returns evenly spaced values starting with number start.
Iterable<int> count(int start, {int step = 1}) sync* {
  while (true) {
    yield start;
    start += step;
  }
}
