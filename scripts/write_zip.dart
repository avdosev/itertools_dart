import 'dart:io';

String makeZipCode(int length) {
  final types = Iterable.generate(length, (int i) => 'T${i + 1}').join(', ');
  final moves = Iterable.generate(length, (int i) => 'move${i + 1}').toList();

  return """
Iterable<Tuple$length<$types>> zip$length<$types>(
    ${Iterable.generate(length, (int i) => 'Iterable<T${i + 1}> it${i + 1}').join(', ')}) sync* {
  ${Iterable.generate(length, (int i) => 'final iter${i + 1} = it${i + 1}.iterator;').join('\n  ')}
  var keep_running = true;
  while (keep_running) {
    yield Tuple$length<$types>(${Iterable.generate(length, (int i) => 'iter${i + 1}.current').join(', ')});
    ${Iterable.generate(length, (int i) => 'final move${i + 1} = iter${i + 1}.moveNext();').join('\n  ')}
    final all_true = ${moves.join(' && ')};
    final all_false = ${moves.map((e) => '!' + e).join(' && ')};
    assert(!(all_true || all_false), 'iteration length must be equal');
    keep_running = all_true;
  }
}
  """;
}

void main(List<String> args) async {
  final f = File('lib/src/zip.dart');
  final file = f.openWrite();
  file.write("import 'package:tuple/tuple.dart';\n");
  for (int i = 2; i <= 7; i++) {
    file.write('\n');
    file.write(makeZipCode(i));
    file.write('\n');
  }
  file.write('\n');
  await file.flush();
  await file.close();
}
