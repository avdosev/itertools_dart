/// Make an iterator that returns evenly spaced values starting with number start.
///
/// ```dart
/// count(5, step: 2) // 5, 7, 9, 11, ...
/// ```
Iterable<int> count(int start, {int step = 1}) sync* {
  while (true) {
    yield start;
    start += step;
  }
}
