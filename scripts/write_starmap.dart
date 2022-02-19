import 'dart:io';

String makeStarmapCode(int length) {
  final types = Iterable.generate(length, (int i) => 'T${i + 1}').join(', ');
  final arguments =
      Iterable.generate(length, (int i) => 'e.item${i + 1}').join(', ');
  final l = length;
  return """
extension Starmap$l<$types> on Iterable<Tuple$l<$types>> {
  /// Make an iterator that computes the function using arguments obtained from the iterable. 
  /// Used instead of map() when argument parameters are already grouped in tuples from a single iterable (the data has been “pre-zipped”). 
  Iterable<T> starmap<T>(T Function($types) toElement) {
    return map((e) => toElement($arguments));
  }
}
  """;
}

void main(List<String> args) async {
  final f = File('lib/src/starmap.dart');
  final file = f.openWrite();
  file.write("import 'package:tuple_dart/tuple.dart';\n");
  for (int i = 2; i <= 7; i++) {
    file.write('\n');
    file.write(makeStarmapCode(i));
    file.write('\n');
  }
  file.write('\n');
  await file.flush();
  await file.close();
}
