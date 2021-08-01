import 'package:itertools/itertools.dart';

void main() {
  print(zip2(['H', ',', 'a', 'l'], ['i', ' ', 'l', '!'])
      .map((e) => e.item1 + e.item2)
      .join());
  // output: Hi, all!
}
