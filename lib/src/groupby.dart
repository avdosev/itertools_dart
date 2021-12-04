/// Make a Map consecutive keys and groups from the iterable. The key is a function computing a key value for each element.
///
/// Behavior like SQL’s GROUP BY which aggregates common elements regardless of their input order.
/// The returned group is List.
/// 
/// example:
/// ```dart
/// final groupResult = groupby(
///   [1, 2, 3, 1, 3, 2, 3, 4],
///   key: (int item) => item,
/// );
/// /* groupResult-> {
///   1: [1, 1],
///   2: [2, 2],
///   3: [3, 3, 3],
///   4: [4],
/// } */
/// ```
Map<KeyType, List<ValueType>> groupby<KeyType, ValueType>(
    Iterable<ValueType> iterable,
    {required KeyType Function(ValueType) key}) {
  final group = <KeyType, List<ValueType>>{};

  for (final item in iterable) {
    final k = key(item);
    group[k]?.add(item);
    group[k] ??= [item];
  }

  return group;
}
