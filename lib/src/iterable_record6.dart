extension IterableRecord6<T1, T2, T3, T4, T5, T6>
    on Iterable<(T1, T2, T3, T4, T5, T6)> {
  Iterable<T> mapRecord<T>(
          T Function(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6) toElement) =>
      map((e) => toElement(e.$1, e.$2, e.$3, e.$4, e.$5, e.$6));

  Iterable<(T1, T2, T3, T4, T5, T6)> whereRecord(
          bool Function(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6) toElement) =>
      where((e) => toElement(e.$1, e.$2, e.$3, e.$4, e.$5, e.$6));
}
