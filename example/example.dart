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
