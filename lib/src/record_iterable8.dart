extension RecordIterable8<T1, T2, T3, T4, T5, T6, T7, T8>
    on Iterable<(T1, T2, T3, T4, T5, T6, T7, T8)> {
  Iterable<T> mapRecord<T>(
          T Function(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8)
              toElement) =>
      map((e) => toElement(e.$1, e.$2, e.$3, e.$4, e.$5, e.$6, e.$7, e.$8));

  Iterable<(T1, T2, T3, T4, T5, T6, T7, T8)> whereRecord(
          bool Function(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8)
              toElement) =>
      where((e) => toElement(e.$1, e.$2, e.$3, e.$4, e.$5, e.$6, e.$7, e.$8));
}
