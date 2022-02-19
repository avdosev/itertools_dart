import 'package:tuple_dart/tuple.dart';

extension Starmap2<T1, T2> on Iterable<Tuple2<T1, T2>> {
  /// Make an iterator that computes the function using arguments obtained from the iterable.
  /// Used instead of map() when argument parameters are already grouped in tuples from a single iterable (the data has been “pre-zipped”).
  Iterable<T> starmap<T>(T Function(T1, T2) toElement) {
    return map((e) => toElement(e.item1, e.item2));
  }
}

extension Starmap3<T1, T2, T3> on Iterable<Tuple3<T1, T2, T3>> {
  /// Make an iterator that computes the function using arguments obtained from the iterable.
  /// Used instead of map() when argument parameters are already grouped in tuples from a single iterable (the data has been “pre-zipped”).
  Iterable<T> starmap<T>(T Function(T1, T2, T3) toElement) {
    return map((e) => toElement(e.item1, e.item2, e.item3));
  }
}

extension Starmap4<T1, T2, T3, T4> on Iterable<Tuple4<T1, T2, T3, T4>> {
  /// Make an iterator that computes the function using arguments obtained from the iterable.
  /// Used instead of map() when argument parameters are already grouped in tuples from a single iterable (the data has been “pre-zipped”).
  Iterable<T> starmap<T>(T Function(T1, T2, T3, T4) toElement) {
    return map((e) => toElement(e.item1, e.item2, e.item3, e.item4));
  }
}

extension Starmap5<T1, T2, T3, T4, T5> on Iterable<Tuple5<T1, T2, T3, T4, T5>> {
  /// Make an iterator that computes the function using arguments obtained from the iterable.
  /// Used instead of map() when argument parameters are already grouped in tuples from a single iterable (the data has been “pre-zipped”).
  Iterable<T> starmap<T>(T Function(T1, T2, T3, T4, T5) toElement) {
    return map((e) => toElement(e.item1, e.item2, e.item3, e.item4, e.item5));
  }
}

extension Starmap6<T1, T2, T3, T4, T5, T6>
    on Iterable<Tuple6<T1, T2, T3, T4, T5, T6>> {
  /// Make an iterator that computes the function using arguments obtained from the iterable.
  /// Used instead of map() when argument parameters are already grouped in tuples from a single iterable (the data has been “pre-zipped”).
  Iterable<T> starmap<T>(T Function(T1, T2, T3, T4, T5, T6) toElement) {
    return map(
        (e) => toElement(e.item1, e.item2, e.item3, e.item4, e.item5, e.item6));
  }
}

extension Starmap7<T1, T2, T3, T4, T5, T6, T7>
    on Iterable<Tuple7<T1, T2, T3, T4, T5, T6, T7>> {
  /// Make an iterator that computes the function using arguments obtained from the iterable.
  /// Used instead of map() when argument parameters are already grouped in tuples from a single iterable (the data has been “pre-zipped”).
  Iterable<T> starmap<T>(T Function(T1, T2, T3, T4, T5, T6, T7) toElement) {
    return map((e) => toElement(
        e.item1, e.item2, e.item3, e.item4, e.item5, e.item6, e.item7));
  }
}
