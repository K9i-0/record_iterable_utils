extension IterableRecord3<T1, T2, T3> on Iterable<(T1, T2, T3)> {
  Iterable<T> mapRecord<T>(T Function(T1 t1, T2 t2, T3 t3) toElement) =>
      map((e) => toElement(e.$1, e.$2, e.$3));

  Iterable<(T1, T2, T3)> whereRecord(
          bool Function(T1 t1, T2 t2, T3 t3) toElement) =>
      where((e) => toElement(e.$1, e.$2, e.$3));
}
