extension RecordIterable4<T1, T2, T3, T4> on Iterable<(T1, T2, T3, T4)> {
  Iterable<T> mapRecord<T>(T Function(T1 t1, T2 t2, T3 t3, T4 t4) toElement) =>
      map((e) => toElement(e.$1, e.$2, e.$3, e.$4));

  Iterable<(T1, T2, T3, T4)> whereRecord(
          bool Function(T1 t1, T2 t2, T3 t3, T4 t4) toElement) =>
      where((e) => toElement(e.$1, e.$2, e.$3, e.$4));
}
