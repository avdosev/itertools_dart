# itertools &middot; ![build status](https://github.com/avdosev/itertools_dart/workflows/unittests/badge.svg)

Simple package for easy work with Dart iterators just like Python itertools.

Provide methods / functions:
* zip2/zip3/etc
* chain
* count
* enumerate / mapIndexed
* and other helpers

## Links

[Pub dev][pubdev]

[Documentation][docs]

[Issue tracker][tracker]

## Usage

```dart
import 'package:itertools/itertools.dart';

void main() {
  print(zip2(['H', ',', 'a', 'l'], ['i', ' ', 'l', '!'])
      .map((e) => e.item1 + e.item2)
      .join());
  // output: Hi, all!

  print(range(first: 1, last: 10, step: 3).reversed.toList());
  // output: [7, 4, 1]

  // or more compact

  print(1.to(10, step: 3).reversed.toList());
  // output: [7, 4, 1]
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/avdosev/itertools_dart/issues
[pubdev]: https://pub.dev/packages/itertools
[docs]: https://pub.dev/documentation/itertools/latest/
