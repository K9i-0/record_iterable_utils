extension IterableRecord5<T1, T2, T3, T4, T5>
    on Iterable<(T1, T2, T3, T4, T5)> {
  Iterable<T> mapRecord<T>(
          T Function(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5) toElement) =>
      map((e) => toElement(e.$1, e.$2, e.$3, e.$4, e.$5));

  Iterable<(T1, T2, T3, T4, T5)> whereRecord(
          bool Function(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5) toElement) =>
      where((e) => toElement(e.$1, e.$2, e.$3, e.$4, e.$5));
}
