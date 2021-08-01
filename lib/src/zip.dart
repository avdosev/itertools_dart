import 'package:tuple/tuple.dart';

Iterable<Tuple2<T1, T2>> zip2<T1, T2>(
    Iterable<T1> it1, Iterable<T2> it2) sync* {
  final iter1 = it1.iterator;
  final iter2 = it2.iterator;
  var keep_running = true;
  while (keep_running) {
    final move1 = iter1.moveNext();
    final move2 = iter2.moveNext();
    final all_true = move1 && move2;
    final all_false = !move1 && !move2;
    assert(!(all_true || all_false), 'iteration length must be equal');
    if (all_true) {
      yield Tuple2<T1, T2>(iter1.current, iter2.current);
    }
    keep_running = all_true;
  }
}

Iterable<Tuple3<T1, T2, T3>> zip3<T1, T2, T3>(
    Iterable<T1> it1, Iterable<T2> it2, Iterable<T3> it3) sync* {
  final iter1 = it1.iterator;
  final iter2 = it2.iterator;
  final iter3 = it3.iterator;
  var keep_running = true;
  while (keep_running) {
    final move1 = iter1.moveNext();
    final move2 = iter2.moveNext();
    final move3 = iter3.moveNext();
    final all_true = move1 && move2 && move3;
    final all_false = !move1 && !move2 && !move3;
    assert(!(all_true || all_false), 'iteration length must be equal');
    if (all_true) {
      yield Tuple3<T1, T2, T3>(iter1.current, iter2.current, iter3.current);
    }
    keep_running = all_true;
  }
}

Iterable<Tuple4<T1, T2, T3, T4>> zip4<T1, T2, T3, T4>(Iterable<T1> it1,
    Iterable<T2> it2, Iterable<T3> it3, Iterable<T4> it4) sync* {
  final iter1 = it1.iterator;
  final iter2 = it2.iterator;
  final iter3 = it3.iterator;
  final iter4 = it4.iterator;
  var keep_running = true;
  while (keep_running) {
    final move1 = iter1.moveNext();
    final move2 = iter2.moveNext();
    final move3 = iter3.moveNext();
    final move4 = iter4.moveNext();
    final all_true = move1 && move2 && move3 && move4;
    final all_false = !move1 && !move2 && !move3 && !move4;
    assert(!(all_true || all_false), 'iteration length must be equal');
    if (all_true) {
      yield Tuple4<T1, T2, T3, T4>(
          iter1.current, iter2.current, iter3.current, iter4.current);
    }
    keep_running = all_true;
  }
}

Iterable<Tuple5<T1, T2, T3, T4, T5>> zip5<T1, T2, T3, T4, T5>(
    Iterable<T1> it1,
    Iterable<T2> it2,
    Iterable<T3> it3,
    Iterable<T4> it4,
    Iterable<T5> it5) sync* {
  final iter1 = it1.iterator;
  final iter2 = it2.iterator;
  final iter3 = it3.iterator;
  final iter4 = it4.iterator;
  final iter5 = it5.iterator;
  var keep_running = true;
  while (keep_running) {
    final move1 = iter1.moveNext();
    final move2 = iter2.moveNext();
    final move3 = iter3.moveNext();
    final move4 = iter4.moveNext();
    final move5 = iter5.moveNext();
    final all_true = move1 && move2 && move3 && move4 && move5;
    final all_false = !move1 && !move2 && !move3 && !move4 && !move5;
    assert(!(all_true || all_false), 'iteration length must be equal');
    if (all_true) {
      yield Tuple5<T1, T2, T3, T4, T5>(iter1.current, iter2.current,
          iter3.current, iter4.current, iter5.current);
    }
    keep_running = all_true;
  }
}

Iterable<Tuple6<T1, T2, T3, T4, T5, T6>> zip6<T1, T2, T3, T4, T5, T6>(
    Iterable<T1> it1,
    Iterable<T2> it2,
    Iterable<T3> it3,
    Iterable<T4> it4,
    Iterable<T5> it5,
    Iterable<T6> it6) sync* {
  final iter1 = it1.iterator;
  final iter2 = it2.iterator;
  final iter3 = it3.iterator;
  final iter4 = it4.iterator;
  final iter5 = it5.iterator;
  final iter6 = it6.iterator;
  var keep_running = true;
  while (keep_running) {
    final move1 = iter1.moveNext();
    final move2 = iter2.moveNext();
    final move3 = iter3.moveNext();
    final move4 = iter4.moveNext();
    final move5 = iter5.moveNext();
    final move6 = iter6.moveNext();
    final all_true = move1 && move2 && move3 && move4 && move5 && move6;
    final all_false = !move1 && !move2 && !move3 && !move4 && !move5 && !move6;
    assert(!(all_true || all_false), 'iteration length must be equal');
    if (all_true) {
      yield Tuple6<T1, T2, T3, T4, T5, T6>(iter1.current, iter2.current,
          iter3.current, iter4.current, iter5.current, iter6.current);
    }
    keep_running = all_true;
  }
}

Iterable<Tuple7<T1, T2, T3, T4, T5, T6, T7>> zip7<T1, T2, T3, T4, T5, T6, T7>(
    Iterable<T1> it1,
    Iterable<T2> it2,
    Iterable<T3> it3,
    Iterable<T4> it4,
    Iterable<T5> it5,
    Iterable<T6> it6,
    Iterable<T7> it7) sync* {
  final iter1 = it1.iterator;
  final iter2 = it2.iterator;
  final iter3 = it3.iterator;
  final iter4 = it4.iterator;
  final iter5 = it5.iterator;
  final iter6 = it6.iterator;
  final iter7 = it7.iterator;
  var keep_running = true;
  while (keep_running) {
    final move1 = iter1.moveNext();
    final move2 = iter2.moveNext();
    final move3 = iter3.moveNext();
    final move4 = iter4.moveNext();
    final move5 = iter5.moveNext();
    final move6 = iter6.moveNext();
    final move7 = iter7.moveNext();
    final all_true =
        move1 && move2 && move3 && move4 && move5 && move6 && move7;
    final all_false =
        !move1 && !move2 && !move3 && !move4 && !move5 && !move6 && !move7;
    assert(!(all_true || all_false), 'iteration length must be equal');
    if (all_true) {
      yield Tuple7<T1, T2, T3, T4, T5, T6, T7>(
          iter1.current,
          iter2.current,
          iter3.current,
          iter4.current,
          iter5.current,
          iter6.current,
          iter7.current);
    }
    keep_running = all_true;
  }
}
